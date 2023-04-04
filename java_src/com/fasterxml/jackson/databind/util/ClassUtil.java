package com.fasterxml.jackson.databind.util;

import java.lang.annotation.Annotation;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.NoSuchElementException;
import p035j$.util.Iterator;
import p035j$.util.function.Consumer;
/* loaded from: classes.dex */
public final class ClassUtil {
    private static final Class<?> CLS_OBJECT = Object.class;
    private static final Annotation[] NO_ANNOTATIONS = new Annotation[0];
    private static final EmptyIterator<?> EMPTY_ITERATOR = new EmptyIterator<>();

    /* loaded from: classes.dex */
    private static final class EmptyIterator<T> implements Iterator<T>, p035j$.util.Iterator {
        @Override // p035j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator, p035j$.util.Iterator
        public boolean hasNext() {
            return false;
        }

        private EmptyIterator() {
        }

        @Override // java.util.Iterator, p035j$.util.Iterator
        public T next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator, p035j$.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public static <T> java.util.Iterator<T> emptyIterator() {
        return EMPTY_ITERATOR;
    }

    public static List<Class<?>> findSuperClasses(Class<?> cls, Class<?> cls2, boolean z) {
        LinkedList linkedList = new LinkedList();
        if (cls != null && cls != cls2) {
            if (z) {
                linkedList.add(cls);
            }
            while (true) {
                cls = cls.getSuperclass();
                if (cls == null || cls == cls2) {
                    break;
                }
                linkedList.add(cls);
            }
        }
        return linkedList;
    }

    public static boolean isObjectOrPrimitive(Class<?> cls) {
        return cls == CLS_OBJECT || cls.isPrimitive();
    }

    public static Annotation[] findClassAnnotations(Class<?> cls) {
        if (isObjectOrPrimitive(cls)) {
            return NO_ANNOTATIONS;
        }
        return cls.getDeclaredAnnotations();
    }
}
