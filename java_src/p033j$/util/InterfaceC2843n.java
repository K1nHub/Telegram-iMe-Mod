package p033j$.util;

import java.util.Iterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2823l;
/* renamed from: j$.util.n */
/* loaded from: classes2.dex */
public interface InterfaceC2843n extends Iterator {

    /* renamed from: j$.util.n$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2844a extends InterfaceC2843n {
        /* renamed from: c */
        void mo215c(InterfaceC2823l interfaceC2823l);

        void forEachRemaining(Consumer consumer);

        @Override // java.util.Iterator
        Integer next();

        int nextInt();
    }

    void forEachRemaining(Object obj);
}
