package p034j$.util;

import java.util.Comparator;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2655f;
import p034j$.util.function.InterfaceC2661l;
import p034j$.util.function.InterfaceC2666q;
/* renamed from: j$.util.s */
/* loaded from: classes2.dex */
public interface InterfaceC2688s {

    /* renamed from: j$.util.s$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2689a extends InterfaceC2995t {
        @Override // p034j$.util.InterfaceC2688s
        /* renamed from: b */
        boolean mo108b(Consumer consumer);

        /* renamed from: e */
        void mo127e(InterfaceC2655f interfaceC2655f);

        @Override // p034j$.util.InterfaceC2688s
        void forEachRemaining(Consumer consumer);

        /* renamed from: k */
        boolean mo126k(InterfaceC2655f interfaceC2655f);

        @Override // p034j$.util.InterfaceC2995t, p034j$.util.InterfaceC2688s
        InterfaceC2689a trySplit();
    }

    /* renamed from: j$.util.s$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC2690b extends InterfaceC2995t {
        @Override // p034j$.util.InterfaceC2688s
        /* renamed from: b */
        boolean mo108b(Consumer consumer);

        /* renamed from: c */
        void mo120c(InterfaceC2661l interfaceC2661l);

        @Override // p034j$.util.InterfaceC2688s
        void forEachRemaining(Consumer consumer);

        /* renamed from: g */
        boolean mo119g(InterfaceC2661l interfaceC2661l);

        @Override // p034j$.util.InterfaceC2995t, p034j$.util.InterfaceC2688s
        InterfaceC2690b trySplit();
    }

    /* renamed from: j$.util.s$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC2691c extends InterfaceC2995t {
        @Override // p034j$.util.InterfaceC2688s
        /* renamed from: b */
        boolean mo108b(Consumer consumer);

        /* renamed from: d */
        void mo114d(InterfaceC2666q interfaceC2666q);

        @Override // p034j$.util.InterfaceC2688s
        void forEachRemaining(Consumer consumer);

        /* renamed from: i */
        boolean mo113i(InterfaceC2666q interfaceC2666q);

        @Override // p034j$.util.InterfaceC2995t, p034j$.util.InterfaceC2688s
        InterfaceC2691c trySplit();
    }

    /* renamed from: b */
    boolean mo108b(Consumer consumer);

    int characteristics();

    long estimateSize();

    void forEachRemaining(Consumer consumer);

    Comparator getComparator();

    long getExactSizeIfKnown();

    boolean hasCharacteristics(int i);

    InterfaceC2688s trySplit();
}
