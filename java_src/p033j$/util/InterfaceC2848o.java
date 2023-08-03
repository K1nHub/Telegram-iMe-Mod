package p033j$.util;

import java.util.Iterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.o */
/* loaded from: classes2.dex */
public interface InterfaceC2848o extends Iterator {

    /* renamed from: j$.util.o$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2849a extends InterfaceC2848o {
        /* renamed from: c */
        void mo165c(InterfaceC2826l interfaceC2826l);

        void forEachRemaining(Consumer consumer);

        @Override // java.util.Iterator
        Integer next();

        int nextInt();
    }

    void forEachRemaining(Object obj);
}
