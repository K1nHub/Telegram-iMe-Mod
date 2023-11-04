package p033j$.util;

import java.util.Comparator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2830p;
/* renamed from: j$.util.Spliterator */
/* loaded from: classes2.dex */
public interface Spliterator<T> {

    /* renamed from: j$.util.Spliterator$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC2776a extends InterfaceC2779d {
        @Override // p033j$.util.Spliterator
        /* renamed from: b */
        boolean mo179b(Consumer consumer);

        /* renamed from: e */
        void mo199e(InterfaceC2820f interfaceC2820f);

        @Override // p033j$.util.Spliterator
        void forEachRemaining(Consumer consumer);

        /* renamed from: n */
        boolean mo198n(InterfaceC2820f interfaceC2820f);

        @Override // p033j$.util.Spliterator.InterfaceC2779d, p033j$.util.Spliterator
        InterfaceC2776a trySplit();
    }

    /* renamed from: j$.util.Spliterator$b */
    /* loaded from: classes2.dex */
    public interface InterfaceC2777b extends InterfaceC2779d {
        @Override // p033j$.util.Spliterator
        /* renamed from: b */
        boolean mo179b(Consumer consumer);

        /* renamed from: c */
        void mo193c(InterfaceC2826l interfaceC2826l);

        @Override // p033j$.util.Spliterator
        void forEachRemaining(Consumer consumer);

        /* renamed from: g */
        boolean mo192g(InterfaceC2826l interfaceC2826l);

        @Override // p033j$.util.Spliterator.InterfaceC2779d, p033j$.util.Spliterator
        InterfaceC2777b trySplit();
    }

    /* renamed from: j$.util.Spliterator$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC2778c extends InterfaceC2779d {
        @Override // p033j$.util.Spliterator
        /* renamed from: b */
        boolean mo179b(Consumer consumer);

        /* renamed from: d */
        void mo187d(InterfaceC2830p interfaceC2830p);

        @Override // p033j$.util.Spliterator
        void forEachRemaining(Consumer consumer);

        /* renamed from: i */
        boolean mo186i(InterfaceC2830p interfaceC2830p);

        @Override // p033j$.util.Spliterator.InterfaceC2779d, p033j$.util.Spliterator
        InterfaceC2778c trySplit();
    }

    /* renamed from: j$.util.Spliterator$d */
    /* loaded from: classes2.dex */
    public interface InterfaceC2779d extends Spliterator {
        void forEachRemaining(Object obj);

        boolean tryAdvance(Object obj);

        @Override // p033j$.util.Spliterator
        InterfaceC2779d trySplit();
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
