package com.google.firebase.firestore.model;

import com.google.firebase.firestore.model.BasePath;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.firestore.util.Util;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class BasePath<B extends BasePath<B>> implements Comparable<B> {
    final List<String> segments;

    public abstract String canonicalString();

    abstract B createPathWithSegments(List<String> list);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return compareTo((BasePath<B>) obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BasePath(List<String> list) {
        this.segments = list;
    }

    public String getSegment(int i) {
        return this.segments.get(i);
    }

    public B append(String str) {
        ArrayList arrayList = new ArrayList(this.segments);
        arrayList.add(str);
        return createPathWithSegments(arrayList);
    }

    public B append(B b) {
        ArrayList arrayList = new ArrayList(this.segments);
        arrayList.addAll(b.segments);
        return createPathWithSegments(arrayList);
    }

    public B popFirst(int i) {
        int length = length();
        Assert.hardAssert(length >= i, "Can't call popFirst with count > length() (%d > %d)", Integer.valueOf(i), Integer.valueOf(length));
        return createPathWithSegments(this.segments.subList(i, length));
    }

    public B popLast() {
        return createPathWithSegments(this.segments.subList(0, length() - 1));
    }

    public int compareTo(B b) {
        int length = length();
        int length2 = b.length();
        for (int i = 0; i < length && i < length2; i++) {
            int compareTo = getSegment(i).compareTo(b.getSegment(i));
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return Util.compareIntegers(length, length2);
    }

    public String getLastSegment() {
        return this.segments.get(length() - 1);
    }

    public boolean isEmpty() {
        return length() == 0;
    }

    public boolean isPrefixOf(B b) {
        if (length() > b.length()) {
            return false;
        }
        for (int i = 0; i < length(); i++) {
            if (!getSegment(i).equals(b.getSegment(i))) {
                return false;
            }
        }
        return true;
    }

    public boolean isImmediateParentOf(B b) {
        if (length() + 1 != b.length()) {
            return false;
        }
        for (int i = 0; i < length(); i++) {
            if (!getSegment(i).equals(b.getSegment(i))) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        return canonicalString();
    }

    public int length() {
        return this.segments.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BasePath) && compareTo((BasePath<B>) ((BasePath) obj)) == 0;
    }

    public int hashCode() {
        return ((getClass().hashCode() + 37) * 37) + this.segments.hashCode();
    }
}
