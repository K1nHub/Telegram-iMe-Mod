package com.google.firebase.database.collection;

import java.util.Comparator;
/* loaded from: classes3.dex */
public interface LLRBNode<K, V> {

    /* loaded from: classes3.dex */
    public enum Color {
        RED,
        BLACK
    }

    LLRBNode<K, V> copy(K k, V v, Color color, LLRBNode<K, V> lLRBNode, LLRBNode<K, V> lLRBNode2);

    K getKey();

    LLRBNode<K, V> getLeft();

    LLRBNode<K, V> getMax();

    LLRBNode<K, V> getMin();

    LLRBNode<K, V> getRight();

    V getValue();

    LLRBNode<K, V> insert(K k, V v, Comparator<K> comparator);

    boolean isEmpty();

    boolean isRed();

    LLRBNode<K, V> remove(K k, Comparator<K> comparator);

    int size();
}
