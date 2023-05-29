package p034j$.util;

import java.util.Iterator;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705l;
/* renamed from: j$.util.o */
/* loaded from: classes2.dex */
public interface InterfaceC2727o extends Iterator {

    /* renamed from: j$.util.o$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2728a extends InterfaceC2727o {
        /* renamed from: c */
        void mo147c(InterfaceC2705l interfaceC2705l);

        void forEachRemaining(Consumer consumer);

        @Override // java.util.Iterator
        Integer next();

        int nextInt();
    }

    void forEachRemaining(Object obj);
}
