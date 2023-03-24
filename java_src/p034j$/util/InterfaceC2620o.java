package p034j$.util;

import java.util.Iterator;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2598l;
/* renamed from: j$.util.o */
/* loaded from: classes2.dex */
public interface InterfaceC2620o extends Iterator {

    /* renamed from: j$.util.o$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2621a extends InterfaceC2620o {
        /* renamed from: c */
        void mo161c(InterfaceC2598l interfaceC2598l);

        void forEachRemaining(Consumer consumer);

        @Override // java.util.Iterator
        Integer next();

        int nextInt();
    }

    void forEachRemaining(Object obj);
}
