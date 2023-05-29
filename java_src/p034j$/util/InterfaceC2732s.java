package p034j$.util;

import java.util.Comparator;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2699f;
import p034j$.util.function.InterfaceC2705l;
import p034j$.util.function.InterfaceC2710q;
/* renamed from: j$.util.s */
/* loaded from: classes2.dex */
public interface InterfaceC2732s {

    /* renamed from: j$.util.s$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2733a extends InterfaceC3039t {
        @Override // p034j$.util.InterfaceC2732s
        /* renamed from: b */
        boolean mo113b(Consumer consumer);

        /* renamed from: e */
        void mo132e(InterfaceC2699f interfaceC2699f);

        @Override // p034j$.util.InterfaceC2732s
        void forEachRemaining(Consumer consumer);

        /* renamed from: k */
        boolean mo131k(InterfaceC2699f interfaceC2699f);

        @Override // p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
        InterfaceC2733a trySplit();
    }

    /* renamed from: j$.util.s$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC2734b extends InterfaceC3039t {
        @Override // p034j$.util.InterfaceC2732s
        /* renamed from: b */
        boolean mo113b(Consumer consumer);

        /* renamed from: c */
        void mo125c(InterfaceC2705l interfaceC2705l);

        @Override // p034j$.util.InterfaceC2732s
        void forEachRemaining(Consumer consumer);

        /* renamed from: g */
        boolean mo124g(InterfaceC2705l interfaceC2705l);

        @Override // p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
        InterfaceC2734b trySplit();
    }

    /* renamed from: j$.util.s$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC2735c extends InterfaceC3039t {
        @Override // p034j$.util.InterfaceC2732s
        /* renamed from: b */
        boolean mo113b(Consumer consumer);

        /* renamed from: d */
        void mo119d(InterfaceC2710q interfaceC2710q);

        @Override // p034j$.util.InterfaceC2732s
        void forEachRemaining(Consumer consumer);

        /* renamed from: i */
        boolean mo118i(InterfaceC2710q interfaceC2710q);

        @Override // p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
        InterfaceC2735c trySplit();
    }

    /* renamed from: b */
    boolean mo113b(Consumer consumer);

    int characteristics();

    long estimateSize();

    void forEachRemaining(Consumer consumer);

    Comparator getComparator();

    long getExactSizeIfKnown();

    boolean hasCharacteristics(int i);

    InterfaceC2732s trySplit();
}
