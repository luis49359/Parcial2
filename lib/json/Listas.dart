import 'package:flutter/material.dart';

const List mainMenu = [
  "Hamburguesa",
  "Pizza",
  "Pollo",
  "Tortas",
  "Tacos",
  "Bebidas",
  "Postres"
];

const List iconosMenu = [
  IconData(0xf1a8, fontFamily: 'MaterialIcons'),
  IconData(0xf188, fontFamily: 'MaterialIcons'),
  IconData(0xf0341, fontFamily: 'MaterialIcons'),
  IconData(0xf89a, fontFamily: 'MaterialIcons'),
  IconData(0xeeb9, fontFamily: 'MaterialIcons'),
  IconData(0xef68, fontFamily: 'MaterialIcons'),
  IconData(0xef0f, fontFamily: 'MaterialIcons')
];

const List comidas = [
  {
    "title": "Hamburguesa",
    "Menu": [
      {"title": "Sencilla",
      "image": "assets/images/hamburguesa3.jpg",
      "price": "\$6.50"
      },
      {"title": "Clásica",
      "image": "assets/images/hamburguesa2.jpg",
      "price": "\$9.50"
      },
      {"title": "Triple Carne",
      "image": "assets/images/hamburguesa1.jpg",
      "price": "\$11.50"
      },
    ],
  },
  {
    "title": "Pizza",
    "Menu": [
      {"title": "Pizza Pepperoni",
      "image": "assets/images/pizza2.jpg",
      "price": "\$8.50"
      },
      {"title": "Pizza Pepperoni Extra Queso",
      "image": "assets/images/pizza1.jpg",
      "price": "\$9.50"
      },
      {"title": "Pizza Suprema",
      "image": "assets/images/pizza3.jpg",
      "price": "\$11.50"
      },
    ]
  },
  {
    "title": "Pollo",
    "Menu": [
      {"title": "Pollo Asado",
      "image": "assets/images/pollo1.jpg",
      "price": "\$9.50"
      },
      {"title": "Pollo a la Planca",
      "image": "assets/images/pollo2.jpg",
      "price": "\$9.50"
      },
      {"title": "Pollo parilla limón",
      "image": "assets/images/pollo3.jpg",
      "price": "\$10.50"
      },
    ]
  },
  {
    "title": "Tortas",
    "Menu": [
      {"title": "Monstruo",
      "image": "assets/images/tortas1.jpg",
      "price": "\$12.50"
      },
      {"title": "Torta Doble",
      "image": "assets/images/tortas2.jpg",
      "price": "\$7.50"
      },
      {"title": "Torta Sencilla",
      "image": "assets/images/logo.jpg",
      "price": "\$6.50"
      },
    ]
  },
  {
    "title": "Tacos",
    "Menu": [
      {"title": "Tacos de Pollo",
      "image": "assets/images/tacos1.jpg",
      "price": "\$6.50"
      },
      {"title": "Tacos Mixtos",
      "image": "assets/images/tacos2.jpg",
      "price": "\$7.00"
      },
      {"title": "Tacos con Queso",
      "image": "assets/images/tacos3.jpg",
      "price": "\$7.50"
      },
    ]
  },
  {
    "title": "Bebidas",
    "Menu": [
      {"title": "Frozen",
      "image": "assets/images/bebidas1.jpg",
      "price": "\$4.50"
      },
      {"title": "Licuados",
      "image": "assets/images/bebidas2.jpg",
      "price": "\$4.00"
      },
      {"title": "Agua con menta",
      "image": "assets/images/bebidas3.jpg",
      "price": "\$2.50"
      },
    ]
  },
  {
    "title": "Postres",
    "Menu": [
      {"title": "Cheesecake",
      "image": "assets/images/postres1.jpg",
      "price": "\$5.00"
      },
      {"title": "Gelatina",
      "image": "assets/images/postres2.jpg",
      "price": "\$5.00"
      },
      {"title": "Brownie",
      "image": "assets/images/postres3.jpg",
      "price": "\$5.00"
      },
    ]
  },
];