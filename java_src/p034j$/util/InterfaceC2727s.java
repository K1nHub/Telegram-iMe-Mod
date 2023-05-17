package p034j$.util;

import java.util.Comparator;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2694f;
import p034j$.util.function.InterfaceC2700l;
import p034j$.util.function.InterfaceC2705q;
/* renamed from: j$.util.s */
/* loaded from: classes2.dex */
public interface InterfaceC2727s {

    /* renamed from: j$.util.s$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2728a extends InterfaceC3034t {
        @Override // p034j$.util.InterfaceC2727s
        /* renamed from: b */
        boolean mo113b(Consumer consumer);

        /* renamed from: e */
        void mo132e(InterfaceC2694f interfaceC2694f);

        @Override // p034j$.util.InterfaceC2727s
        void forEachRemaining(Consumer consumer);

        /* renamed from: k */
        boolean mo131k(InterfaceC2694f interfaceC2694f);

        @Override // p034j$.util.InterfaceC3034t, p034j$.util.InterfaceC2727s
        InterfaceC2728a trySplit();
    }

    /* renamed from: j$.util.s$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC2729b extends InterfaceC3034t {
        @Override // p034j$.util.InterfaceC2727s
        /* renamed from: b */
        boolean mo113b(Consumer consumer);

        /* renamed from: c */
        void mo125c(InterfaceC2700l interfaceC2700l);

        @Override // p034j$.util.InterfaceC2727s
        void forEachRemaining(Consumer consumer);

        /* renamed from: g */
        boolean mo124g(InterfaceC2700l interfaceC2700l);

        @Override // p034j$.util.InterfaceC3034t, p034j$.util.InterfaceC2727s
        InterfaceC2729b trySplit();
    }

    /* renamed from: j$.util.s$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC2730c extends InterfaceC3034t {
        @Override // p034j$.util.InterfaceC2727s
        /* renamed from: b */
        boolean mo113b(Consumer consumer);

        /* renamed from: d */
        void mo119d(InterfaceC2705q interfaceC2705q);

        @Override // p034j$.util.InterfaceC2727s
        void forEachRemaining(Consumer consumer);

        /* renamed from: i */
        boolean mo118i(InterfaceC2705q interfaceC2705q);

        @Override // p034j$.util.InterfaceC3034t, p034j$.util.InterfaceC2727s
        InterfaceC2730c trySplit();
    }

    /* renamed from: b */
    boolean mo113b(Consumer consumer);

    int characteristics();

    long estimateSize();

    void forEachRemaining(Consumer consumer);

    Comparator getComparator();

    long getExactSizeIfKnown();

    boolean hasCharacteristics(int i);

    InterfaceC2727s trySplit();
}
