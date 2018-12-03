package com.onlineshopping.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.onlineshopping.entity.Cart;
import com.onlineshopping.entity.CartProduct;
import com.onlineshopping.entity.CartProductId;
import com.onlineshopping.entity.Product;

@Repository
public class CartDaoImpl implements CartDao {

	@Autowired
	private SessionFactory sessionFactory;

	public CartProduct getCartProduct(Cart cart, Product product) {

		Session session = sessionFactory.getCurrentSession();

		CartProductId id = new CartProductId(cart, product);
		CartProduct cartProduct = session.get(CartProduct.class, id);

		return cartProduct;
	}

	@Override
	public CartProduct addCartProduct(CartProduct cp) {

		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(cp);

		return cp;
	}

	@Override
	public List<CartProduct> getProducts(int cartId) {
		Session session = sessionFactory.getCurrentSession();
		System.out.println("cart id in CartDAO : " + cartId);
		Cart persistCart = session.get(Cart.class, cartId);
		System.out.println("persisted cart in DB : " + persistCart);
		List<CartProduct> products = persistCart.getProducts();
		System.out.println(products);
		return products;
	}

	@Override
	public CartProduct updateCartProduct(CartProduct cp) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(cp);
		return cp;
	}

	@Override
	public void removeCartProduct(CartProductId id) {
		Session session = sessionFactory.getCurrentSession();

		CartProduct cartProduct = session.get(CartProduct.class, id);

		if (cartProduct != null) {
			int quantity = cartProduct.getQuantity();
			double price = cartProduct.getProduct().getPrice() * quantity;
			Cart cart = cartProduct.getCart();

			session.delete(cartProduct);

			Cart c = session.get(Cart.class, cart.getId());
			c.setTotalNumberOfProducts(c.getTotalNumberOfProducts() - quantity);
			c.setTotalPrice(c.getTotalPrice() - price);
			session.saveOrUpdate(c);
		}
	}

	@Override
	public void updateCart(Cart cart) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(cart);
	}

	@Override
	public void removeCartProducts(CartProductId id) {
		Session session = sessionFactory.getCurrentSession();

		CartProduct cartProduct = session.get(CartProduct.class, id);
		session.delete(cartProduct);
	}
}
