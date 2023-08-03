package p033j$.util;

import java.util.Comparator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.util.s */
/* loaded from: classes2.dex */
public interface InterfaceC2853s {

    /* renamed from: j$.util.s$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2854a extends InterfaceC3160t {
        @Override // p033j$.util.InterfaceC2853s
        /* renamed from: b */
        boolean mo131b(Consumer consumer);

        /* renamed from: e */
        void mo150e(InterfaceC2820f interfaceC2820f);

        @Override // p033j$.util.InterfaceC2853s
        void forEachRemaining(Consumer consumer);

        /* renamed from: k */
        boolean mo149k(InterfaceC2820f interfaceC2820f);

        @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
        InterfaceC2854a trySplit();
    }

    /* renamed from: j$.util.s$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC2855b extends InterfaceC3160t {
        @Override // p033j$.util.InterfaceC2853s
        /* renamed from: b */
        boolean mo131b(Consumer consumer);

        /* renamed from: c */
        void mo143c(InterfaceC2826l interfaceC2826l);

        @Override // p033j$.util.InterfaceC2853s
        void forEachRemaining(Consumer consumer);

        /* renamed from: g */
        boolean mo142g(InterfaceC2826l interfaceC2826l);

        @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
        InterfaceC2855b trySplit();
    }

    /* renamed from: j$.util.s$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC2856c extends InterfaceC3160t {
        @Override // p033j$.util.InterfaceC2853s
        /* renamed from: b */
        boolean mo131b(Consumer consumer);

        /* renamed from: d */
        void mo137d(InterfaceC2831q interfaceC2831q);

        @Override // p033j$.util.InterfaceC2853s
        void forEachRemaining(Consumer consumer);

        /* renamed from: i */
        boolean mo136i(InterfaceC2831q interfaceC2831q);

        @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
        InterfaceC2856c trySplit();
    }

    /* renamed from: b */
    boolean mo131b(Consumer consumer);

    int characteristics();

    long estimateSize();

    void forEachRemaining(Consumer consumer);

    Comparator getComparator();

    long getExactSizeIfKnown();

    boolean hasCharacteristics(int i);

    InterfaceC2853s trySplit();
}
