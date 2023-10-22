package org.aspectj.lang;
/* loaded from: classes4.dex */
public interface JoinPoint {

    /* loaded from: classes4.dex */
    public interface StaticPart {
        String toString();
    }

    Object getTarget();
}
