package p034j$.util;

import java.util.Comparator;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2454f;
import p034j$.util.function.InterfaceC2460l;
import p034j$.util.function.InterfaceC2465q;
/* renamed from: j$.util.s */
/* loaded from: classes2.dex */
public interface InterfaceC2487s {

    /* renamed from: j$.util.s$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2488a extends InterfaceC2794t {
        @Override // p034j$.util.InterfaceC2487s
        /* renamed from: b */
        boolean mo128b(Consumer consumer);

        /* renamed from: e */
        void mo147e(InterfaceC2454f interfaceC2454f);

        @Override // p034j$.util.InterfaceC2487s
        void forEachRemaining(Consumer consumer);

        /* renamed from: k */
        boolean mo146k(InterfaceC2454f interfaceC2454f);

        @Override // p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
        InterfaceC2488a trySplit();
    }

    /* renamed from: j$.util.s$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC2489b extends InterfaceC2794t {
        @Override // p034j$.util.InterfaceC2487s
        /* renamed from: b */
        boolean mo128b(Consumer consumer);

        /* renamed from: c */
        void mo140c(InterfaceC2460l interfaceC2460l);

        @Override // p034j$.util.InterfaceC2487s
        void forEachRemaining(Consumer consumer);

        /* renamed from: g */
        boolean mo139g(InterfaceC2460l interfaceC2460l);

        @Override // p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
        InterfaceC2489b trySplit();
    }

    /* renamed from: j$.util.s$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC2490c extends InterfaceC2794t {
        @Override // p034j$.util.InterfaceC2487s
        /* renamed from: b */
        boolean mo128b(Consumer consumer);

        /* renamed from: d */
        void mo134d(InterfaceC2465q interfaceC2465q);

        @Override // p034j$.util.InterfaceC2487s
        void forEachRemaining(Consumer consumer);

        /* renamed from: i */
        boolean mo133i(InterfaceC2465q interfaceC2465q);

        @Override // p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
        InterfaceC2490c trySplit();
    }

    /* renamed from: b */
    boolean mo128b(Consumer consumer);

    int characteristics();

    long estimateSize();

    void forEachRemaining(Consumer consumer);

    Comparator getComparator();

    long getExactSizeIfKnown();

    boolean hasCharacteristics(int i);

    InterfaceC2487s trySplit();
}
