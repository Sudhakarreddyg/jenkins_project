<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>NexusShop | Premium Modern E‑Commerce</title>
    <!-- Google Fonts: Modern & Clean -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- Font Awesome 6 (free) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: #fefefe;
            color: #0a1c2f;
            scroll-behavior: smooth;
        }

        :root {
            --primary-dark: #0B2B40;
            --primary: #1B4F6B;
            --accent: #FF8C42;
            --accent-light: #FFB26B;
            --accent-glow: rgba(255, 140, 66, 0.2);
            --surface: #ffffff;
            --gray-50: #F9FAFB;
            --gray-200: #E5E9F0;
            --gray-600: #5A6E7A;
            --shadow-sm: 0 8px 20px rgba(0, 0, 0, 0.02), 0 4px 8px rgba(0, 0, 0, 0.02);
            --shadow-md: 0 12px 28px rgba(0, 0, 0, 0.04), 0 0 0 1px rgba(0, 0, 0, 0.02);
            --shadow-lg: 0 20px 35px -12px rgba(0, 0, 0, 0.08);
            --radius-xl: 28px;
            --radius-lg: 20px;
            --radius-md: 16px;
            --transition: all 0.25s cubic-bezier(0.2, 0, 0, 1);
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 24px;
        }

        /* Header - Glassmorphism */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(27, 79, 107, 0.08);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 14px 0;
            gap: 20px;
        }

        .brand {
            font-family: 'Space Grotesk', monospace;
            font-weight: 700;
            font-size: 1.8rem;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #0B2B40 0%, #1B4F6B 100%);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .brand span {
            color: var(--accent);
            background: none;
            -webkit-background-clip: unset;
            background-clip: unset;
        }

        nav.main-nav ul {
            display: flex;
            gap: 12px;
            list-style: none;
        }

        nav.main-nav li a {
            padding: 8px 18px;
            font-weight: 500;
            color: #1F3B4C;
            border-radius: 40px;
            transition: var(--transition);
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 0.95rem;
        }

        nav.main-nav li a i {
            font-size: 1rem;
        }

        nav.main-nav li a:hover {
            background: var(--accent-glow);
            color: var(--accent);
        }

        .search {
            background: white;
            border: 1px solid var(--gray-200);
            border-radius: 48px;
            padding: 8px 16px;
            display: flex;
            align-items: center;
            gap: 8px;
            box-shadow: var(--shadow-sm);
            transition: var(--transition);
        }

        .search:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 0 3px var(--accent-glow);
        }

        .search input {
            border: none;
            background: transparent;
            outline: none;
            width: 210px;
            font-size: 0.9rem;
        }

        .icon-btn {
            background: transparent;
            border: none;
            font-size: 1.3rem;
            color: var(--primary-dark);
            cursor: pointer;
            transition: var(--transition);
            width: 42px;
            height: 42px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border-radius: 60px;
        }

        .icon-btn:hover {
            background: var(--gray-50);
            color: var(--accent);
        }

        .cart {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -4px;
            right: -4px;
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: 800;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }

        .mobile-toggle {
            display: none;
        }

        /* Hero Section: Modern */
        .hero {
            background: linear-gradient(135deg, #08222e 0%, #0f3b4f 100%);
            border-radius: 0 0 var(--radius-xl) var(--radius-xl);
            margin: 8px 20px 32px 20px;
            padding: 64px 32px;
            position: relative;
            overflow: hidden;
            box-shadow: var(--shadow-lg);
        }

        .hero::before {
            content: "✨";
            font-size: 220px;
            position: absolute;
            bottom: -30px;
            right: -20px;
            opacity: 0.08;
            pointer-events: none;
        }

        .hero .container {
            position: relative;
            z-index: 2;
            text-align: center;
        }

        .hero h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 3.2rem;
            font-weight: 700;
            color: white;
            letter-spacing: -0.02em;
        }

        .hero p {
            color: rgba(255,255,255,0.85);
            max-width: 600px;
            margin: 16px auto 28px;
            font-size: 1.1rem;
        }

        .btn-group {
            display: flex;
            gap: 16px;
            justify-content: center;
            flex-wrap: wrap;
        }

        .btn {
            padding: 12px 28px;
            border-radius: 60px;
            font-weight: 600;
            font-size: 0.95rem;
            border: none;
            cursor: pointer;
            transition: var(--transition);
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }

        .btn-primary {
            background: var(--accent);
            color: #0B2B40;
            box-shadow: 0 6px 14px rgba(255, 140, 66, 0.3);
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            background: #ff9a55;
            box-shadow: 0 12px 20px rgba(255, 140, 66, 0.35);
        }

        .btn-outline-light {
            background: transparent;
            border: 1.5px solid rgba(255,255,255,0.4);
            color: white;
        }

        .btn-outline-light:hover {
            background: rgba(255,255,255,0.1);
            border-color: white;
        }

        /* Section Titles */
        .section-title {
            font-size: 2rem;
            font-weight: 700;
            font-family: 'Space Grotesk', sans-serif;
            letter-spacing: -0.01em;
            margin-bottom: 8px;
        }

        .section-sub {
            color: var(--gray-600);
            margin-bottom: 32px;
        }

        /* Category Grid - Modern cards */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 24px;
        }

        .cat-card {
            background: white;
            border-radius: var(--radius-lg);
            padding: 24px 12px;
            text-align: center;
            cursor: pointer;
            transition: var(--transition);
            border: 1px solid var(--gray-200);
            box-shadow: var(--shadow-sm);
        }

        .cat-card:hover {
            transform: translateY(-8px);
            border-color: var(--accent-light);
            box-shadow: 0 20px 30px -12px rgba(0,0,0,0.1);
        }

        .cat-icon {
            font-size: 2.6rem;
            color: var(--accent);
            margin-bottom: 12px;
        }

        .cat-card h4 {
            font-weight: 600;
        }

        /* Products Grid - Clean & Airy */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 28px;
        }

        .product-card {
            background: white;
            border-radius: var(--radius-md);
            overflow: hidden;
            transition: var(--transition);
            box-shadow: var(--shadow-sm);
            border: 1px solid rgba(0,0,0,0.02);
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-lg);
        }

        .product-img {
            width: 100%;
            height: 230px;
            object-fit: cover;
            transition: transform 0.3s ease;
        }

        .product-card:hover .product-img {
            transform: scale(1.02);
        }

        .product-body {
            padding: 18px 16px 12px;
        }

        .product-title {
            font-weight: 700;
            font-size: 1.1rem;
            margin-bottom: 6px;
        }

        .price-wrap {
            display: flex;
            align-items: baseline;
            gap: 12px;
            margin: 10px 0;
        }

        .current-price {
            font-weight: 800;
            font-size: 1.35rem;
            color: var(--primary);
        }

        .old-price {
            text-decoration: line-through;
            color: var(--gray-600);
            font-size: 0.85rem;
        }

        .rating {
            color: #F4B942;
            font-size: 0.85rem;
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .product-footer {
            padding: 8px 16px 18px;
            display: flex;
            gap: 12px;
        }

        .add-cart-btn {
            flex: 1;
            background: var(--primary-dark);
            color: white;
            border: none;
            padding: 10px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
        }

        .add-cart-btn:hover {
            background: var(--primary);
        }

        /* Flash sale card 2.0 */
        .flash-deal {
            background: linear-gradient(115deg, #FFF6ED 0%, #FFEAD8 100%);
            border-radius: var(--radius-xl);
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            overflow: hidden;
            box-shadow: var(--shadow-md);
        }

        .deal-img {
            flex: 1.2;
            min-width: 240px;
            background: #fff2e6;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 24px;
        }

        .deal-img img {
            width: 100%;
            max-height: 280px;
            object-fit: contain;
            filter: drop-shadow(0 20px 20px rgba(0,0,0,0.1));
        }

        .deal-content {
            flex: 1.8;
            padding: 36px 28px;
        }

        .timer {
            display: flex;
            gap: 16px;
            margin: 24px 0;
        }

        .time-box {
            background: white;
            border-radius: 18px;
            padding: 12px 16px;
            min-width: 70px;
            text-align: center;
            font-weight: 800;
            font-size: 1.6rem;
            color: var(--primary-dark);
            box-shadow: 0 6px 12px rgba(0,0,0,0.02);
        }

        /* Testimonials - Modern */
        .testimonials-scroll {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding-bottom: 12px;
            scrollbar-width: thin;
        }

        .testimonial-card {
            background: white;
            border-radius: 28px;
            padding: 24px;
            min-width: 320px;
            box-shadow: var(--shadow-md);
            border: 1px solid var(--gray-200);
        }

        /* Newsletter */
        .newsletter-modern {
            background: var(--primary-dark);
            border-radius: var(--radius-xl);
            padding: 48px 32px;
            text-align: center;
            color: white;
        }

        .newsletter-modern input {
            padding: 14px 24px;
            border-radius: 60px;
            border: none;
            width: 280px;
            background: rgba(255,255,255,0.9);
            margin-right: 10px;
        }

        /* Footer */
        footer {
            background: #F8F9FC;
            margin-top: 40px;
            padding: 48px 0 32px;
            border-top: 1px solid #eef2f6;
        }

        @media (max-width: 860px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: block; background: none; border: none; font-size: 1.6rem; }
            .hero h1 { font-size: 2.2rem; }
            .hero { margin: 0 12px 24px; padding: 48px 16px; }
        }

        @media (max-width: 680px) {
            .container { padding: 0 18px; }
            .products-grid { grid-template-columns: 1fr; }
            .categories-grid { grid-template-columns: repeat(2,1fr); }
            .timer { gap: 8px; }
            .time-box { padding: 8px 12px; font-size: 1.2rem; min-width: 55px; }
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div style="display:flex; gap: 16px; align-items: center;">
            <button class="mobile-toggle" id="mobileToggleBtn" aria-label="Menu"><i class="fas fa-bars"></i></button>
            <div class="brand">Nexus<span>Shop</span></div>
        </div>
        <nav class="main-nav">
            <ul>
                <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#" id="catExploreBtn"><i class="fas fa-th-large"></i> Explore</a></li>
                <li><a href="#trending"><i class="fas fa-fire"></i> Trending</a></li>
                <li><a href="#deals"><i class="fas fa-tag"></i> Flash Sale</a></li>
            </ul>
        </nav>
        <div style="display: flex; gap: 8px; align-items: center;">
            <div class="search">
                <i class="fas fa-search" style="color: #aaa;"></i>
                <input type="text" id="searchInput" placeholder="Search products...">
            </div>
            <button class="icon-btn" id="searchBtn"><i class="fas fa-arrow-right"></i></button>
            <div class="cart icon-btn" id="cartBtn">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-count" id="cartCount">0</span>
            </div>
        </div>
    </div>
    <!-- mobile menu panel -->
    <div id="mobileMenuPanel" style="display: none; background: white; border-top: 1px solid #eef2f6;">
        <div class="container" style="padding: 20px 0;">
            <ul style="list-style: none; display: flex; flex-direction: column; gap: 16px;">
                <li><a href="#">🏠 Home</a></li>
                <li><a href="#">📁 Categories</a></li>
                <li><a href="#trending">🔥 Trending</a></li>
                <li><a href="#deals">⏱️ Deals</a></li>
            </ul>
        </div>
    </div>
</header>

<main>
    <!-- Hero Section Redesigned -->
    <section class="hero">
        <div class="container">
            <h1>Beyond the ordinary.<br>Elevate your style.</h1>
            <p>Exclusive drops, curated tech & fashion — limited flash sales up to 40% off.</p>
            <div class="btn-group">
                <button class="btn btn-primary" id="shopNowHero"><i class="fas fa-arrow-right"></i> Shop Now</button>
                <button class="btn btn-outline-light" id="exploreDealsBtn"><i class="fas fa-gem"></i> Discover deals</button>
            </div>
        </div>
    </section>

    <!-- Categories Section -->
    <div class="container" style="margin-top: 48px;">
        <div class="section-title">Shop by Category</div>
        <div class="section-sub">Curated collections for every passion</div>
        <div class="categories-grid" id="categoriesGrid"></div>
    </div>

    <!-- Trending Products Section -->
    <div class="container" id="trending" style="margin-top: 64px;">
        <div class="section-title">Trending Now 🔥</div>
        <div class="section-sub">Bestsellers & editor's picks</div>
        <div class="products-grid" id="productsGrid"></div>
    </div>

    <!-- Flash Sale Section -->
    <div class="container" id="deals" style="margin-top: 64px;">
        <div class="section-title">⚡ Flash Deal</div>
        <div class="section-sub">Hurry up! offer ends soon</div>
        <div class="flash-deal">
            <div class="deal-img">
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook M2">
            </div>
            <div class="deal-content">
                <h2 style="font-size: 1.8rem; font-weight: 700;">MacBook Air M2</h2>
                <p style="margin: 8px 0 12px; color: #3b5c6e;">Supercharged by next-gen performance. All-day battery.</p>
                <div class="timer">
                    <div class="time-box"><span id="dealDays">0</span><div style="font-size: 12px;">Days</div></div>
                    <div class="time-box"><span id="dealHours">00</span><div style="font-size: 12px;">Hrs</div></div>
                    <div class="time-box"><span id="dealMinutes">00</span><div style="font-size: 12px;">Mins</div></div>
                    <div class="time-box"><span id="dealSeconds">00</span><div style="font-size: 12px;">Sec</div></div>
                </div>
                <div style="display: flex; gap: 12px; align-items: baseline; margin-bottom: 16px;">
                    <span class="current-price" style="font-size: 2rem;">$999</span>
                    <span class="old-price" style="font-size: 1.2rem;">$1,199</span>
                    <span style="background: #FF8C42; padding: 4px 12px; border-radius: 60px; font-weight: 700;">-17%</span>
                </div>
                <button class="btn btn-primary" id="buyDealBtn"><i class="fas fa-bolt"></i> Add to Cart — Deal</button>
            </div>
        </div>
    </div>

    <!-- Testimonials -->
    <div class="container" style="margin-top: 70px;">
        <div class="section-title">Kind Words</div>
        <div class="section-sub">Trusted by thousands</div>
        <div class="testimonials-scroll" id="testimonialsSection">
            <div class="testimonial-card">
                <i class="fas fa-star" style="color:#FFB800;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                <p style="margin: 12px 0;">“Absolutely gorgeous design and fast delivery. The product quality is premium.”</p>
                <div><strong>— Olivia Chen</strong></div>
            </div>
            <div class="testimonial-card">
                <i class="fas fa-star" style="color:#FFB800;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
                <p style="margin: 12px 0;">“My new favorite online store. The flash sale prices are unbeatable.”</p>
                <div><strong>— Marcus V.</strong></div>
            </div>
            <div class="testimonial-card">
                <i class="fas fa-star" style="color:#FFB800;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                <p style="margin: 12px 0;">“Excellent UI and super smooth cart experience. Will recommend.”</p>
                <div><strong>— Sophia L.</strong></div>
            </div>
        </div>
    </div>

    <!-- Newsletter -->
    <div class="container" style="margin-top: 64px; margin-bottom: 40px;">
        <div class="newsletter-modern">
            <i class="fas fa-envelope-open-text" style="font-size: 2.2rem; margin-bottom: 12px; display: inline-block;"></i>
            <h3 style="font-size: 1.8rem;">Join the inner circle</h3>
            <p style="margin-bottom: 20px;">Get early access to drops & secret sales</p>
            <form id="newsletterForm" style="display: flex; flex-wrap: wrap; justify-content: center; gap: 12px;">
                <input type="email" id="newsEmail" placeholder="Your email address" required>
                <button type="submit" class="btn btn-primary" style="background: white; color: var(--primary-dark);">Subscribe →</button>
            </form>
            <div id="newsMsg" style="margin-top: 16px; font-size: 0.85rem;"></div>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="display: flex; flex-wrap: wrap; justify-content: space-between; gap: 32px;">
        <div><div class="brand" style="font-size: 1.5rem;">Nexus<span>Shop</span></div><p style="margin-top: 12px; color: #5f7a8c;">Modern commerce, timeless style.</p></div>
        <div><h4>Explore</h4><p style="color: #5f7a8c;">New arrivals<br/>Best sellers<br/>Gift cards</p></div>
        <div><h4>Support</h4><p style="color: #5f7a8c;">FAQs<br/>Shipping<br/>Returns</p></div>
    </div>
    <div class="container" style="text-align: center; margin-top: 48px; color: #7a8f9c;">© <span id="year"></span> NexusShop — Redefining e‑commerce</div>
</footer>

<script>
    // ----------------------------- DATA ---------------------------------
    const CATEGORIES = [
        { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
        { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
        { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
        { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
        { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
        { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];
    const PRODUCTS = [
        { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'phones' },
        { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
        { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
        { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
        { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
        { id: 6, title: 'Chanel No.5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
        { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
        { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'gadgets' }
    ];
    
    let cartItemsCount = 0;
    const cartCountSpan = document.getElementById('cartCount');

    function updateCartUI() { cartCountSpan.innerText = cartItemsCount; }

    function addToCart(id) {
        const product = PRODUCTS.find(p => p.id === id);
        if(product) {
            cartItemsCount++;
            updateCartUI();
            const btn = document.querySelector(`.add-cart-btn[data-id='${id}']`);
            if(btn) {
                const original = btn.innerHTML;
                btn.innerHTML = '<i class="fas fa-check"></i> Added';
                setTimeout(() => { btn.innerHTML = original; }, 1000);
            } else {
                alert(`${product.title} added to cart!`);
            }
        }
    }

    function renderCategories() {
        const grid = document.getElementById('categoriesGrid');
        grid.innerHTML = CATEGORIES.map(cat => `
            <div class="cat-card" data-cat="${cat.name}">
                <div class="cat-icon"><i class="fas ${cat.icon}"></i></div>
                <h4>${cat.name}</h4>
                <p class="section-sub" style="font-size:12px;">shop now →</p>
            </div>
        `).join('');
        document.querySelectorAll('.cat-card').forEach(card => {
            card.addEventListener('click', () => {
                const catName = card.getAttribute('data-cat');
                document.getElementById('searchInput').value = catName;
                filterProducts(catName);
                document.getElementById('trending').scrollIntoView({ behavior: 'smooth' });
            });
        });
    }

    function renderProducts(productsArray) {
        const grid = document.getElementById('productsGrid');
        if(!productsArray.length) { grid.innerHTML = '<div class="section-sub">✨ No products match, try another keyword</div>'; return; }
        grid.innerHTML = productsArray.map(p => `
            <div class="product-card">
                <img class="product-img" src="${p.img}" alt="${p.title}">
                <div class="product-body">
                    <div class="product-title">${p.title}</div>
                    <div class="price-wrap">
                        <span class="current-price">$${p.price.toLocaleString()}</span>
                        ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
                    </div>
                    <div class="rating"><i class="fas fa-star"></i> ${p.rating}.0 (${p.reviews})</div>
                </div>
                <div class="product-footer">
                    <button class="add-cart-btn" data-id="${p.id}"><i class="fas fa-shopping-bag"></i> Add to cart</button>
                    <button class="icon-btn" style="border:1px solid #e2e8f0;"><i class="far fa-heart"></i></button>
                </div>
            </div>
        `).join('');
        document.querySelectorAll('.add-cart-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.getAttribute('data-id'));
                addToCart(id);
            });
        });
    }

    function filterProducts(query) {
        const term = query.trim().toLowerCase();
        if(!term) renderProducts(PRODUCTS);
        else {
            const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(term) || p.category.toLowerCase().includes(term));
            renderProducts(filtered);
        }
    }

    // Countdown
    function startDealTimer() {
        const target = new Date();
        target.setDate(target.getDate() + 1);
        target.setHours(target.getHours() + 3);
        const interval = setInterval(() => {
            const now = new Date();
            const diff = target - now;
            if(diff <= 0) { clearInterval(interval); document.getElementById('dealDays').innerText = '0'; document.getElementById('dealHours').innerText = '00'; document.getElementById('dealMinutes').innerText = '00'; document.getElementById('dealSeconds').innerText = '00'; return; }
            const days = Math.floor(diff / (1000*60*60*24));
            const hours = Math.floor((diff % (86400000)) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = String(hours).padStart(2,'0');
            document.getElementById('dealMinutes').innerText = String(mins).padStart(2,'0');
            document.getElementById('dealSeconds').innerText = String(secs).padStart(2,'0');
        }, 1000);
    }

    // Event listeners
    document.getElementById('searchBtn').addEventListener('click', () => filterProducts(document.getElementById('searchInput').value));
    document.getElementById('searchInput').addEventListener('keypress', (e) => { if(e.key === 'Enter') filterProducts(e.target.value); });
    document.getElementById('shopNowHero').addEventListener('click', () => document.getElementById('trending').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('exploreDealsBtn').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('buyDealBtn').addEventListener('click', () => { cartItemsCount++; updateCartUI(); alert('MacBook Air M2 added to cart!'); });
    const mobileToggleBtn = document.getElementById('mobileToggleBtn');
    const mobilePanel = document.getElementById('mobileMenuPanel');
    if(mobileToggleBtn) mobileToggleBtn.addEventListener('click', () => { mobilePanel.style.display = mobilePanel.style.display === 'none' ? 'block' : 'none'; });
    document.getElementById('catExploreBtn')?.addEventListener('click', (e) => { e.preventDefault(); alert('✨ Browse categories below — click any tile to filter products!'); });
    document.getElementById('newsletterForm').addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsEmail').value;
        const msgDiv = document.getElementById('newsMsg');
        if(email.includes('@') && email.includes('.')) {
            msgDiv.innerHTML = '🎉 Thanks! You’re now on the list.';
            msgDiv.style.color = '#c3e8cf';
            document.getElementById('newsEmail').value = '';
            setTimeout(() => msgDiv.innerHTML = '', 2500);
        } else {
            msgDiv.innerHTML = '⚠️ Please enter a valid email.';
            msgDiv.style.color = '#ffb3b3';
        }
    });
    renderCategories();
    renderProducts(PRODUCTS);
    startDealTimer();
    document.getElementById('year').innerText = new Date().getFullYear();
    updateCartUI();
</script>
</body>
</html>
