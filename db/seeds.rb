User.create!([
  {name: "Kalista Pineda", email: "kalista@example.com", password_digest: "$2a$12$mAWnEkjKhlqDd5JMHKoGe.7TYhlCvjDeufQMyM8qnu/WX6JLQf3ji", admin: false},
  {name: "Derek McGee", email: "derek@example.com", password_digest: "$2a$12$aQotuSV0ocqaLJAMdz2ZaeT2OXQqSZ85XUzUjDKYyTiu0EwODpLiS", admin: true},
  {name: "Test", email: "test@example.com", password_digest: "$2a$12$0oDnjWhTNZntRvpi3dLYNO5V3J1jAXWmma1Mk2WYzi13WZmhCNWLO", admin: true}
])
Supplier.create!([
  {name: "Amazon", email: "amazon@wahwah.com", phone_number: "1(800)-555-5555"},
  {name: "Ford", email: "ford@wahwah.com", phone_number: "(613)-353-2917"},
  {name: "Staples", email: "staples@wahwah.com", phone_number: "(614)-273-8901"},
  {name: "Sephora", email: "sephora@wahwah.com", phone_number: "1(800)-555-8888"},
  {name: "PetCo", email: "petco@wahwah.com", phone_number: "(613)-645-9876"},
  {name: "GNC", email: "gnc@wahwah.com", phone_number: "1(800)-234-5678"}
])
Product.create!([
  {name: "book", price: "35.0", description: "good for reading and whatnot", inventory: 50, supplier_id: 1},
  {name: "keyboard", price: "35.0", description: "good for typing and whatnot", inventory: 50, supplier_id: 1},
  {name: "pencil", price: "2.0", description: "this product can write and erase", inventory: 50, supplier_id: 3},
  {name: "whiteboard", price: "20.0", description: "this product can be drawn on with eraseable marker", inventory: 50, supplier_id: 3},
  {name: "desk", price: "55.0", description: "good for putting stuff on", inventory: 50, supplier_id: 3},
  {name: "Lanyard", price: "19.99", description: "5", inventory: 50, supplier_id: 1},
  {name: "mechanical pencil", price: "1.99", description: "10", inventory: 50, supplier_id: 2},
  {name: "test", price: "5.0", description: "testtetsetsetsetset", inventory: 50, supplier_id: 1},
  {name: "mascara", price: "19.99", description: "makes your eyelashes full", inventory: 50, supplier_id: 1},
  {name: "plant", price: "39.99", description: "brings nature's beauty to your home", inventory: 50, supplier_id: 1},
  {name: "dog food", price: "59.99", description: "for feeding your little friends", inventory: 50, supplier_id: 1},
  {name: "iPhone", price: "899.99", description: "for calling and texting", inventory: 50, supplier_id: 1},
  {name: "protein powder", price: "19.99", description: "for getting absolutely ripped", inventory: 50, supplier_id: 1},
  {name: "car", price: "29000.0", description: "this product can get you from place to place", inventory: 10, supplier_id: 2}
])
Order.create!([
  {user_id: 1, subtotal: "5.05", tax: "1.99", total: "7.04"},
  {user_id: 1, subtotal: "6.0", tax: "0.75", total: "6.75"},
  {user_id: 2, subtotal: "19.99", tax: "1.75", total: "21.74"},
  {user_id: 2, subtotal: "59.97", tax: "0.0", total: "0.0"},
  {user_id: 2, subtotal: "59.97", tax: "1.8", total: "21.79"},
  {user_id: 2, subtotal: "59.97", tax: "5.4", total: "65.37"},
  {user_id: 2, subtotal: "59.97", tax: "1.8", total: "61.77"},
  {user_id: 2, subtotal: "59.97", tax: "1.8", total: "65.37"},
  {user_id: 2, subtotal: "35.0", tax: "3.15", total: "38.15"},
  {user_id: 2, subtotal: "35.0", tax: "3.15", total: "38.15"},
  {user_id: 2, subtotal: "35.0", tax: "3.15", total: "38.15"},
  {user_id: 2, subtotal: "35.0", tax: "3.15", total: "38.15"},
  {user_id: 2, subtotal: "58070.0", tax: "5226.3", total: "63296.3"},
  {user_id: 2, subtotal: "58247.0", tax: "5242.23", total: "63489.23"},
  {user_id: 2, subtotal: "0.0", tax: "0.0", total: "0.0"}
])
Image.create!([
  {url: "https://m.media-amazon.com/images/I/71Gxzd1BJVL._AC_UF1000,1000_QL80_.jpg", product_id: 20},
  {url: "https://target.scene7.com/is/image/Target/GUEST_636cf6fa-8903-47d3-bc06-a20df932f1a7?wid=488&hei=488&fmt=pjpeg", product_id: 20},
  {url: "https://cdn.vectorstock.com/i/preview-1x/30/25/pencil-vector-39133025.jpg", product_id: 31},
  {url: "https://cdn.vectorstock.com/i/preview-1x/30/25/pencil-vector-39133025.jpg", product_id: 32},
  {url: "https://cdn.vectorstock.com/i/preview-1x/30/25/pencil-vector-39133025.jpg", product_id: 28},
  {url: "https://cdn.vectorstock.com/i/preview-1x/30/25/pencil-vector-39133025.jpg", product_id: 29},
  {url: "https://www.mbusa.com/content/dam/mb-nafta/us/myco/my23/eqe-sedan/all-vehicles/2023-EQE350-SEDAN-AVP-DR.png", product_id: 1},
  {url: "https://ctl.net/cdn/shop/products/ctl-ctl-wireless-keyboard-for-chrome-os-works-with-chromebook-29142051258456_1800x.jpg?v=1647376204", product_id: 3},
  {url: "https://ctl.net/cdn/shop/products/ctl-ctl-keyboard-and-mouse-for-chromebook-29347477913688_1800x.jpg?v=1650579189", product_id: 3},
  {url: "https://media.chromedata.com/MediaGallery/media/MjkzOTU4Xk1lZGlhIEdhbGxlcnk/uMe_yju1DZdsfQNgVsTrjBHGgTJMB0VSefiQLPtdH__uD6Ig3h6KEiqd0TVN1gDkZfHm-7iz-Ej3gr6-1Ncj0aBu7qPn3EMIpBjE5cK3QruAnlz9LfE7HROKLhA3Pz16aIpBbBkbfLmTP1Zfmn0T1MR-M6XGUmYOzZ-f6dfjTg3cIB36ZheZjw0e4Yszix0g/cc_2023MBCCV0003_01_640_149.png", product_id: 1},
  {url: "https://m.media-amazon.com/images/I/61ItOr+01UL._AC_UF894,1000_QL80_.jpg", product_id: 2},
  {url: "https://m.media-amazon.com/images/I/81W7uynFyWL._AC_UF1000,1000_QL80_.jpg", product_id: 2},
  {url: "https://musgravepencil.com/cdn/shop/products/Havest_CedarPencil_1024x1024@2x.jpg?v=1576593212", product_id: 4},
  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmxtxQw-7bf-sgHDze1620Y2Tvm1U4xtOVzuSH5byOwcL4RKX1l-tnT6s-ecqbhFTCk0I&usqp=CAU", product_id: 4},
  {url: "https://m.media-amazon.com/images/I/71rVsiifItL._AC_UF894,1000_QL80_.jpg", product_id: 5},
  {url: "https://cdn-images.article.com/products/SKU19375/2890x1500/image84734.jpg", product_id: 6},
  {url: "https://chairish-prod.freetls.fastly.net/image/product/sized/99c0612b-0761-4a71-9460-c6e6e07b84c6/vintage-1960s-florence-knoll-executive-desk-0479?aspect=fit&width=640&height=640", product_id: 6},
  {url: "https://api.totallypromotional.com/Data/Media/Catalog/6/800/46bdad84-db6b-4e0a-a35d-faf81e5a44c83-or4-in-Economy-Polyester-Lanyard-TL700-totally-royal-blue.jpg", product_id: 13},
  {url: "https://media.asicdn.com/images/jpgo/43710000/43710854.jpg", product_id: 13},
  {url: "https://m.media-amazon.com/images/I/818BOSMWC4L.jpg", product_id: 14},
  {url: "https://onceit.imgix.net/uploads/images/999058013d4cffff839a5c6835de9a7d.jpg?w=600&h=800&fit=clip&fm=jpg&q=50&auto=format%2Ccompress", product_id: 16},
  {url: "https://m.media-amazon.com/images/I/71e5-Rxbp7L._AC_UF1000,1000_QL80_.jpg", product_id: 16},
  {url: "https://cdn.shopify.com/s/files/1/0150/6262/products/the_sill-variant-white_gloss-money_tree.jpg?v=1699404852", product_id: 17},
  {url: "https://shop.celsiaflorist.com/cdn/shop/products/IMG_6449_800x.jpg?v=1682295258", product_id: 17},
  {url: "https://m.media-amazon.com/images/I/81xyE8OZBqL.jpg", product_id: 18},
  {url: "https://assets.woolworths.com.au/images/2010/382203.jpg?impolicy=wowcdxwbjbx&w=500&h=500", product_id: 18},
  {url: "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6487/6487259_sd.jpg", product_id: 19},
  {url: "https://cdn.vectorstock.com/i/preview-1x/30/25/pencil-vector-39133025.jpg", product_id: 30},
  {url: "https://cdn.vectorstock.com/i/preview-1x/30/25/pencil-vector-39133025.jpg", product_id: 27},
  {url: "https://m.media-amazon.com/images/I/41jzP0iLWLL._AC_UF894,1000_QL80_.jpg", product_id: 5},
  {url: "https://target.scene7.com/is/image/Target/GUEST_c9ba1b3e-bc5d-4c81-90f5-bda233598606?qlt=65&fmt=pjpeg&hei=350&wid=350", product_id: 14},
  {url: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/refurb-iphone-13-pro-max-graphite-2023?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1679072989055", product_id: 19}
])
CategoryProduct.create!([
  {product_id: 4, category_id: 4},
  {product_id: 5, category_id: 4},
  {product_id: 6, category_id: 4},
  {product_id: 1, category_id: 3}
])
Category.create!([
  {name: "Electronics"},
  {name: "Cosmetics"},
  {name: "Pet Care"},
  {name: "Household Items"},
  {name: "Health and Wellness"},
  {name: "Other"}
])
CartedProduct.create!([
  {user_id: 2, product_id: 1, quantity: 1, status: "purchased", order_id: 14},
  {user_id: 2, product_id: 1, quantity: 1, status: "purchased", order_id: 14},
  {user_id: 2, product_id: 2, quantity: 3, status: "purchased", order_id: 14},
  {user_id: 2, product_id: 3, quantity: 4, status: "purchased", order_id: 14},
  {user_id: 2, product_id: 4, quantity: 1, status: "purchased", order_id: 14},
  {user_id: 1, product_id: 3, quantity: 1, status: "carted", order_id: nil},
  {user_id: 1, product_id: 3, quantity: 1, status: "carted", order_id: nil}
])
