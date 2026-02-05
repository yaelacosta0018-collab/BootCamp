package com.talentotech.energia.model;
import jakarta.persistence.*;

// Concierte las clases de java en base de datos
@Entity
@Tabla(name = "users")
public class User {
@Id
@GenerateValue(strategy = GenerationType.IDENTITY)
private Long id;
@Column(nullable = false, unique = true)
private String username;
@Column(nullable = false
private String email;    
)
}

