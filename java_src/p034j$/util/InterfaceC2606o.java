package p034j$.util;

import java.util.Iterator;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2584l;
/* renamed from: j$.util.o */
/* loaded from: classes2.dex */
public interface InterfaceC2606o extends Iterator {

    /* renamed from: j$.util.o$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2607a extends InterfaceC2606o {
        /* renamed from: c */
        void mo162c(InterfaceC2584l interfaceC2584l);

        void forEachRemaining(Consumer consumer);

        @Override // java.util.Iterator
        Integer next();

        int nextInt();
    }

    void forEachRemaining(Object obj);
}
