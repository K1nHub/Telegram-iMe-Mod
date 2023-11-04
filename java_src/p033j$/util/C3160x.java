package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.x */
/* loaded from: classes2.dex */
final class C3160x extends AbstractC2768B implements Spliterator.InterfaceC2776a {
    @Override // p033j$.util.Spliterator.InterfaceC2776a, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2843k.m600f(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2776a
    /* renamed from: e */
    public void mo199e(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2776a, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2843k.m605a(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2843k.m602d(this);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2843k.m601e(this, i);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2776a
    /* renamed from: n */
    public boolean mo198n(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return false;
    }

    @Override // p033j$.util.AbstractC2768B, p033j$.util.Spliterator.InterfaceC2776a, p033j$.util.Spliterator.InterfaceC2779d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2776a trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2768B, p033j$.util.Spliterator.InterfaceC2776a, p033j$.util.Spliterator.InterfaceC2779d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2779d trySplit() {
        return null;
    }
}
