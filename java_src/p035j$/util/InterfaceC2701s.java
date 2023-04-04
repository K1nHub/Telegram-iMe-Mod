package p035j$.util;

import java.util.Comparator;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2668f;
import p035j$.util.function.InterfaceC2674l;
import p035j$.util.function.InterfaceC2679q;
/* renamed from: j$.util.s */
/* loaded from: classes2.dex */
public interface InterfaceC2701s {

    /* renamed from: j$.util.s$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2702a extends InterfaceC3008t {
        @Override // p035j$.util.InterfaceC2701s
        /* renamed from: b */
        boolean mo122b(Consumer consumer);

        /* renamed from: e */
        void mo141e(InterfaceC2668f interfaceC2668f);

        @Override // p035j$.util.InterfaceC2701s
        void forEachRemaining(Consumer consumer);

        /* renamed from: k */
        boolean mo140k(InterfaceC2668f interfaceC2668f);

        @Override // p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
        InterfaceC2702a trySplit();
    }

    /* renamed from: j$.util.s$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC2703b extends InterfaceC3008t {
        @Override // p035j$.util.InterfaceC2701s
        /* renamed from: b */
        boolean mo122b(Consumer consumer);

        /* renamed from: c */
        void mo134c(InterfaceC2674l interfaceC2674l);

        @Override // p035j$.util.InterfaceC2701s
        void forEachRemaining(Consumer consumer);

        /* renamed from: g */
        boolean mo133g(InterfaceC2674l interfaceC2674l);

        @Override // p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
        InterfaceC2703b trySplit();
    }

    /* renamed from: j$.util.s$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC2704c extends InterfaceC3008t {
        @Override // p035j$.util.InterfaceC2701s
        /* renamed from: b */
        boolean mo122b(Consumer consumer);

        /* renamed from: d */
        void mo128d(InterfaceC2679q interfaceC2679q);

        @Override // p035j$.util.InterfaceC2701s
        void forEachRemaining(Consumer consumer);

        /* renamed from: i */
        boolean mo127i(InterfaceC2679q interfaceC2679q);

        @Override // p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
        InterfaceC2704c trySplit();
    }

    /* renamed from: b */
    boolean mo122b(Consumer consumer);

    int characteristics();

    long estimateSize();

    void forEachRemaining(Consumer consumer);

    Comparator getComparator();

    long getExactSizeIfKnown();

    boolean hasCharacteristics(int i);

    InterfaceC2701s trySplit();
}
