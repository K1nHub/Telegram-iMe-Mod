package p033j$.util;

import java.util.Comparator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2815f;
import p033j$.util.function.InterfaceC2821l;
import p033j$.util.function.InterfaceC2825p;
/* renamed from: j$.util.Spliterator */
/* loaded from: classes2.dex */
public interface Spliterator<T> {

    /* renamed from: j$.util.Spliterator$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2771a extends InterfaceC2774d {
        @Override // p033j$.util.Spliterator
        /* renamed from: b */
        boolean mo182b(Consumer consumer);

        /* renamed from: e */
        void mo202e(InterfaceC2815f interfaceC2815f);

        @Override // p033j$.util.Spliterator
        void forEachRemaining(Consumer consumer);

        /* renamed from: n */
        boolean mo201n(InterfaceC2815f interfaceC2815f);

        @Override // p033j$.util.Spliterator.InterfaceC2774d, p033j$.util.Spliterator
        InterfaceC2771a trySplit();
    }

    /* renamed from: j$.util.Spliterator$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC2772b extends InterfaceC2774d {
        @Override // p033j$.util.Spliterator
        /* renamed from: b */
        boolean mo182b(Consumer consumer);

        /* renamed from: c */
        void mo196c(InterfaceC2821l interfaceC2821l);

        @Override // p033j$.util.Spliterator
        void forEachRemaining(Consumer consumer);

        /* renamed from: g */
        boolean mo195g(InterfaceC2821l interfaceC2821l);

        @Override // p033j$.util.Spliterator.InterfaceC2774d, p033j$.util.Spliterator
        InterfaceC2772b trySplit();
    }

    /* renamed from: j$.util.Spliterator$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC2773c extends InterfaceC2774d {
        @Override // p033j$.util.Spliterator
        /* renamed from: b */
        boolean mo182b(Consumer consumer);

        /* renamed from: d */
        void mo190d(InterfaceC2825p interfaceC2825p);

        @Override // p033j$.util.Spliterator
        void forEachRemaining(Consumer consumer);

        /* renamed from: i */
        boolean mo189i(InterfaceC2825p interfaceC2825p);

        @Override // p033j$.util.Spliterator.InterfaceC2774d, p033j$.util.Spliterator
        InterfaceC2773c trySplit();
    }

    /* renamed from: j$.util.Spliterator$d */
    /* loaded from: classes2.dex */
    public interface InterfaceC2774d extends Spliterator {
        void forEachRemaining(Object obj);

        boolean tryAdvance(Object obj);

        @Override // p033j$.util.Spliterator
        InterfaceC2774d trySplit();
    }

    /* renamed from: b */
    boolean mo182b(Consumer consumer);

    int characteristics();

    long estimateSize();

    void forEachRemaining(Consumer consumer);

    Comparator getComparator();

    long getExactSizeIfKnown();

    boolean hasCharacteristics(int i);

    Spliterator trySplit();
}
