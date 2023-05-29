package p034j$.util;

import java.util.Iterator;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2700l;
/* renamed from: j$.util.o */
/* loaded from: classes2.dex */
public interface InterfaceC2722o extends Iterator {

    /* renamed from: j$.util.o$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2723a extends InterfaceC2722o {
        /* renamed from: c */
        void mo147c(InterfaceC2700l interfaceC2700l);

        void forEachRemaining(Consumer consumer);

        @Override // java.util.Iterator
        Integer next();

        int nextInt();
    }

    void forEachRemaining(Object obj);
}
