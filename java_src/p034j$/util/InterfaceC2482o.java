package p034j$.util;

import java.util.Iterator;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2460l;
/* renamed from: j$.util.o */
/* loaded from: classes2.dex */
public interface InterfaceC2482o extends Iterator {

    /* renamed from: j$.util.o$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2483a extends InterfaceC2482o {
        /* renamed from: c */
        void mo162c(InterfaceC2460l interfaceC2460l);

        void forEachRemaining(Consumer consumer);

        @Override // java.util.Iterator
        Integer next();

        int nextInt();
    }

    void forEachRemaining(Object obj);
}
