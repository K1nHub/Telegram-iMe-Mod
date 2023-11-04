package p033j$.util;

import java.util.Iterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.n */
/* loaded from: classes2.dex */
public interface InterfaceC2846n extends Iterator {

    /* renamed from: j$.util.n$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2847a extends InterfaceC2846n {
        /* renamed from: c */
        void mo215c(InterfaceC2826l interfaceC2826l);

        void forEachRemaining(Consumer consumer);

        @Override // java.util.Iterator
        Integer next();

        int nextInt();
    }

    void forEachRemaining(Object obj);
}
