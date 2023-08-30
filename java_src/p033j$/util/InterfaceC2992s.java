package p033j$.util;

import java.util.Comparator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2959f;
import p033j$.util.function.InterfaceC2965l;
import p033j$.util.function.InterfaceC2970q;
/* renamed from: j$.util.s */
/* loaded from: classes2.dex */
public interface InterfaceC2992s {

    /* renamed from: j$.util.s$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2993a extends InterfaceC3299t {
        @Override // p033j$.util.InterfaceC2992s
        /* renamed from: b */
        boolean mo131b(Consumer consumer);

        /* renamed from: e */
        void mo150e(InterfaceC2959f interfaceC2959f);

        @Override // p033j$.util.InterfaceC2992s
        void forEachRemaining(Consumer consumer);

        /* renamed from: k */
        boolean mo149k(InterfaceC2959f interfaceC2959f);

        @Override // p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
        InterfaceC2993a trySplit();
    }

    /* renamed from: j$.util.s$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC2994b extends InterfaceC3299t {
        @Override // p033j$.util.InterfaceC2992s
        /* renamed from: b */
        boolean mo131b(Consumer consumer);

        /* renamed from: c */
        void mo143c(InterfaceC2965l interfaceC2965l);

        @Override // p033j$.util.InterfaceC2992s
        void forEachRemaining(Consumer consumer);

        /* renamed from: g */
        boolean mo142g(InterfaceC2965l interfaceC2965l);

        @Override // p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
        InterfaceC2994b trySplit();
    }

    /* renamed from: j$.util.s$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC2995c extends InterfaceC3299t {
        @Override // p033j$.util.InterfaceC2992s
        /* renamed from: b */
        boolean mo131b(Consumer consumer);

        /* renamed from: d */
        void mo137d(InterfaceC2970q interfaceC2970q);

        @Override // p033j$.util.InterfaceC2992s
        void forEachRemaining(Consumer consumer);

        /* renamed from: i */
        boolean mo136i(InterfaceC2970q interfaceC2970q);

        @Override // p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
        InterfaceC2995c trySplit();
    }

    /* renamed from: b */
    boolean mo131b(Consumer consumer);

    int characteristics();

    long estimateSize();

    void forEachRemaining(Consumer consumer);

    Comparator getComparator();

    long getExactSizeIfKnown();

    boolean hasCharacteristics(int i);

    InterfaceC2992s trySplit();
}
