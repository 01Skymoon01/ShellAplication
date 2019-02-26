#!/bin/bash
function SimpleUser {

    echo "here are the simple users: "

    getent passwd {1000..6000} | cut -d : -f1
}

SimpleUser
