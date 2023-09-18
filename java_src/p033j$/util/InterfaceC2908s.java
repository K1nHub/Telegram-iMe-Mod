package p033j$.util;

import java.util.Comparator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2875f;
import p033j$.util.function.InterfaceC2881l;
import p033j$.util.function.InterfaceC2886q;
/* renamed from: j$.util.s */
/* loaded from: classes2.dex */
public interface InterfaceC2908s {

    /* renamed from: j$.util.s$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2909a extends InterfaceC3215t {
        @Override // p033j$.util.InterfaceC2908s
        /* renamed from: b */
        boolean mo131b(Consumer consumer);

        /* renamed from: e */
        void mo150e(InterfaceC2875f interfaceC2875f);

        @Override // p033j$.util.InterfaceC2908s
        void forEachRemaining(Consumer consumer);

        /* renamed from: k */
        boolean mo149k(InterfaceC2875f interfaceC2875f);

        @Override // p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
        InterfaceC2909a trySplit();
    }

    /* renamed from: j$.util.s$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC2910b extends InterfaceC3215t {
        @Override // p033j$.util.InterfaceC2908s
        /* renamed from: b */
        boolean mo131b(Consumer consumer);

        /* renamed from: c */
        void mo143c(InterfaceC2881l interfaceC2881l);

        @Override // p033j$.util.InterfaceC2908s
        void forEachRemaining(Consumer consumer);

        /* renamed from: g */
        boolean mo142g(InterfaceC2881l interfaceC2881l);

        @Override // p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
        InterfaceC2910b trySplit();
    }

    /* renamed from: j$.util.s$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC2911c extends InterfaceC3215t {
        @Override // p033j$.util.InterfaceC2908s
        /* renamed from: b */
        boolean mo131b(Consumer consumer);

        /* renamed from: d */
        void mo137d(InterfaceC2886q interfaceC2886q);

        @Override // p033j$.util.InterfaceC2908s
        void forEachRemaining(Consumer consumer);

        /* renamed from: i */
        boolean mo136i(InterfaceC2886q interfaceC2886q);

        @Override // p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
        InterfaceC2911c trySplit();
    }

    /* renamed from: b */
    boolean mo131b(Consumer consumer);

    int characteristics();

    long estimateSize();

    void forEachRemaining(Consumer consumer);

    Comparator getComparator();

    long getExactSizeIfKnown();

    boolean hasCharacteristics(int i);

    InterfaceC2908s trySplit();
}
