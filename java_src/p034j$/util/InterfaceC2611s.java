package p034j$.util;

import java.util.Comparator;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2578f;
import p034j$.util.function.InterfaceC2584l;
import p034j$.util.function.InterfaceC2589q;
/* renamed from: j$.util.s */
/* loaded from: classes2.dex */
public interface InterfaceC2611s {

    /* renamed from: j$.util.s$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2612a extends InterfaceC2918t {
        @Override // p034j$.util.InterfaceC2611s
        /* renamed from: b */
        boolean mo128b(Consumer consumer);

        /* renamed from: e */
        void mo147e(InterfaceC2578f interfaceC2578f);

        @Override // p034j$.util.InterfaceC2611s
        void forEachRemaining(Consumer consumer);

        /* renamed from: k */
        boolean mo146k(InterfaceC2578f interfaceC2578f);

        @Override // p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
        InterfaceC2612a trySplit();
    }

    /* renamed from: j$.util.s$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC2613b extends InterfaceC2918t {
        @Override // p034j$.util.InterfaceC2611s
        /* renamed from: b */
        boolean mo128b(Consumer consumer);

        /* renamed from: c */
        void mo140c(InterfaceC2584l interfaceC2584l);

        @Override // p034j$.util.InterfaceC2611s
        void forEachRemaining(Consumer consumer);

        /* renamed from: g */
        boolean mo139g(InterfaceC2584l interfaceC2584l);

        @Override // p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
        InterfaceC2613b trySplit();
    }

    /* renamed from: j$.util.s$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC2614c extends InterfaceC2918t {
        @Override // p034j$.util.InterfaceC2611s
        /* renamed from: b */
        boolean mo128b(Consumer consumer);

        /* renamed from: d */
        void mo134d(InterfaceC2589q interfaceC2589q);

        @Override // p034j$.util.InterfaceC2611s
        void forEachRemaining(Consumer consumer);

        /* renamed from: i */
        boolean mo133i(InterfaceC2589q interfaceC2589q);

        @Override // p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
        InterfaceC2614c trySplit();
    }

    /* renamed from: b */
    boolean mo128b(Consumer consumer);

    int characteristics();

    long estimateSize();

    void forEachRemaining(Consumer consumer);

    Comparator getComparator();

    long getExactSizeIfKnown();

    boolean hasCharacteristics(int i);

    InterfaceC2611s trySplit();
}
