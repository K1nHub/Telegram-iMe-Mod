package p033j$.util;

import java.util.Comparator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2817f;
import p033j$.util.function.InterfaceC2823l;
import p033j$.util.function.InterfaceC2827p;
/* renamed from: j$.util.Spliterator */
/* loaded from: classes2.dex */
public interface Spliterator<T> {

    /* renamed from: j$.util.Spliterator$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2773a extends InterfaceC2776d {
        @Override // p033j$.util.Spliterator
        /* renamed from: b */
        boolean mo179b(Consumer consumer);

        /* renamed from: e */
        void mo199e(InterfaceC2817f interfaceC2817f);

        @Override // p033j$.util.Spliterator
        void forEachRemaining(Consumer consumer);

        /* renamed from: n */
        boolean mo198n(InterfaceC2817f interfaceC2817f);

        @Override // p033j$.util.Spliterator.InterfaceC2776d, p033j$.util.Spliterator
        InterfaceC2773a trySplit();
    }

    /* renamed from: j$.util.Spliterator$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC2774b extends InterfaceC2776d {
        @Override // p033j$.util.Spliterator
        /* renamed from: b */
        boolean mo179b(Consumer consumer);

        /* renamed from: c */
        void mo193c(InterfaceC2823l interfaceC2823l);

        @Override // p033j$.util.Spliterator
        void forEachRemaining(Consumer consumer);

        /* renamed from: g */
        boolean mo192g(InterfaceC2823l interfaceC2823l);

        @Override // p033j$.util.Spliterator.InterfaceC2776d, p033j$.util.Spliterator
        InterfaceC2774b trySplit();
    }

    /* renamed from: j$.util.Spliterator$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC2775c extends InterfaceC2776d {
        @Override // p033j$.util.Spliterator
        /* renamed from: b */
        boolean mo179b(Consumer consumer);

        /* renamed from: d */
        void mo187d(InterfaceC2827p interfaceC2827p);

        @Override // p033j$.util.Spliterator
        void forEachRemaining(Consumer consumer);

        /* renamed from: i */
        boolean mo186i(InterfaceC2827p interfaceC2827p);

        @Override // p033j$.util.Spliterator.InterfaceC2776d, p033j$.util.Spliterator
        InterfaceC2775c trySplit();
    }

    /* renamed from: j$.util.Spliterator$d */
    /* loaded from: classes2.dex */
    public interface InterfaceC2776d extends Spliterator {
        void forEachRemaining(Object obj);

        boolean tryAdvance(Object obj);

        @Override // p033j$.util.Spliterator
        InterfaceC2776d trySplit();
    }

    /* renamed from: b */
    boolean mo179b(Consumer consumer);

    int characteristics();

    long estimateSize();

    void forEachRemaining(Consumer consumer);

    Comparator getComparator();

    long getExactSizeIfKnown();

    boolean hasCharacteristics(int i);

    Spliterator trySplit();
}
