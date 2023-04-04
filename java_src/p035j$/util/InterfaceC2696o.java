package p035j$.util;

import java.util.Iterator;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2674l;
/* renamed from: j$.util.o */
/* loaded from: classes2.dex */
public interface InterfaceC2696o extends Iterator {

    /* renamed from: j$.util.o$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2697a extends InterfaceC2696o {
        /* renamed from: c */
        void mo156c(InterfaceC2674l interfaceC2674l);

        void forEachRemaining(Consumer consumer);

        @Override // java.util.Iterator
        Integer next();

        int nextInt();
    }

    void forEachRemaining(Object obj);
}
