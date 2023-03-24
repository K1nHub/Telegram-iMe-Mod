package p034j$.util;

import java.util.Comparator;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2592f;
import p034j$.util.function.InterfaceC2598l;
import p034j$.util.function.InterfaceC2603q;
/* renamed from: j$.util.s */
/* loaded from: classes2.dex */
public interface InterfaceC2625s {

    /* renamed from: j$.util.s$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2626a extends InterfaceC2932t {
        @Override // p034j$.util.InterfaceC2625s
        /* renamed from: b */
        boolean mo127b(Consumer consumer);

        /* renamed from: e */
        void mo146e(InterfaceC2592f interfaceC2592f);

        @Override // p034j$.util.InterfaceC2625s
        void forEachRemaining(Consumer consumer);

        /* renamed from: k */
        boolean mo145k(InterfaceC2592f interfaceC2592f);

        @Override // p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
        InterfaceC2626a trySplit();
    }

    /* renamed from: j$.util.s$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC2627b extends InterfaceC2932t {
        @Override // p034j$.util.InterfaceC2625s
        /* renamed from: b */
        boolean mo127b(Consumer consumer);

        /* renamed from: c */
        void mo139c(InterfaceC2598l interfaceC2598l);

        @Override // p034j$.util.InterfaceC2625s
        void forEachRemaining(Consumer consumer);

        /* renamed from: g */
        boolean mo138g(InterfaceC2598l interfaceC2598l);

        @Override // p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
        InterfaceC2627b trySplit();
    }

    /* renamed from: j$.util.s$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC2628c extends InterfaceC2932t {
        @Override // p034j$.util.InterfaceC2625s
        /* renamed from: b */
        boolean mo127b(Consumer consumer);

        /* renamed from: d */
        void mo133d(InterfaceC2603q interfaceC2603q);

        @Override // p034j$.util.InterfaceC2625s
        void forEachRemaining(Consumer consumer);

        /* renamed from: i */
        boolean mo132i(InterfaceC2603q interfaceC2603q);

        @Override // p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
        InterfaceC2628c trySplit();
    }

    /* renamed from: b */
    boolean mo127b(Consumer consumer);

    int characteristics();

    long estimateSize();

    void forEachRemaining(Consumer consumer);

    Comparator getComparator();

    long getExactSizeIfKnown();

    boolean hasCharacteristics(int i);

    InterfaceC2625s trySplit();
}
