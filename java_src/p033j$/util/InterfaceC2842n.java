package p033j$.util;

import java.util.Iterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2822l;
/* renamed from: j$.util.n */
/* loaded from: classes2.dex */
public interface InterfaceC2842n extends Iterator {

    /* renamed from: j$.util.n$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2843a extends InterfaceC2842n {
        /* renamed from: c */
        void mo214c(InterfaceC2822l interfaceC2822l);

        void forEachRemaining(Consumer consumer);

        @Override // java.util.Iterator
        Integer next();

        int nextInt();
    }

    void forEachRemaining(Object obj);
}
