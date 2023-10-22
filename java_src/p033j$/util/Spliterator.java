package p033j$.util;

import java.util.Comparator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816f;
import p033j$.util.function.InterfaceC2822l;
import p033j$.util.function.InterfaceC2826p;
/* renamed from: j$.util.Spliterator */
/* loaded from: classes2.dex */
public interface Spliterator<T> {

    /* renamed from: j$.util.Spliterator$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2772a extends InterfaceC2775d {
        @Override // p033j$.util.Spliterator
        /* renamed from: b */
        boolean mo178b(Consumer consumer);

        /* renamed from: e */
        void mo198e(InterfaceC2816f interfaceC2816f);

        @Override // p033j$.util.Spliterator
        void forEachRemaining(Consumer consumer);

        /* renamed from: n */
        boolean mo197n(InterfaceC2816f interfaceC2816f);

        @Override // p033j$.util.Spliterator.InterfaceC2775d, p033j$.util.Spliterator
        InterfaceC2772a trySplit();
    }

    /* renamed from: j$.util.Spliterator$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC2773b extends InterfaceC2775d {
        @Override // p033j$.util.Spliterator
        /* renamed from: b */
        boolean mo178b(Consumer consumer);

        /* renamed from: c */
        void mo192c(InterfaceC2822l interfaceC2822l);

        @Override // p033j$.util.Spliterator
        void forEachRemaining(Consumer consumer);

        /* renamed from: g */
        boolean mo191g(InterfaceC2822l interfaceC2822l);

        @Override // p033j$.util.Spliterator.InterfaceC2775d, p033j$.util.Spliterator
        InterfaceC2773b trySplit();
    }

    /* renamed from: j$.util.Spliterator$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC2774c extends InterfaceC2775d {
        @Override // p033j$.util.Spliterator
        /* renamed from: b */
        boolean mo178b(Consumer consumer);

        /* renamed from: d */
        void mo186d(InterfaceC2826p interfaceC2826p);

        @Override // p033j$.util.Spliterator
        void forEachRemaining(Consumer consumer);

        /* renamed from: i */
        boolean mo185i(InterfaceC2826p interfaceC2826p);

        @Override // p033j$.util.Spliterator.InterfaceC2775d, p033j$.util.Spliterator
        InterfaceC2774c trySplit();
    }

    /* renamed from: j$.util.Spliterator$d */
    /* loaded from: classes2.dex */
    public interface InterfaceC2775d extends Spliterator {
        void forEachRemaining(Object obj);

        boolean tryAdvance(Object obj);

        @Override // p033j$.util.Spliterator
        InterfaceC2775d trySplit();
    }

    /* renamed from: b */
    boolean mo178b(Consumer consumer);

    int characteristics();

    long estimateSize();

    void forEachRemaining(Consumer consumer);

    Comparator getComparator();

    long getExactSizeIfKnown();

    boolean hasCharacteristics(int i);

    Spliterator trySplit();
}
