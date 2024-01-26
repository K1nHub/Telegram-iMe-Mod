package p033j$.util;

import java.util.Iterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2821l;
/* renamed from: j$.util.n */
/* loaded from: classes2.dex */
public interface InterfaceC2841n extends Iterator {

    /* renamed from: j$.util.n$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2842a extends InterfaceC2841n {
        /* renamed from: c */
        void mo218c(InterfaceC2821l interfaceC2821l);

        void forEachRemaining(Consumer consumer);

        @Override // java.util.Iterator
        Integer next();

        int nextInt();
    }

    void forEachRemaining(Object obj);
}
