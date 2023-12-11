package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2817f;
/* renamed from: j$.util.x */
/* loaded from: classes2.dex */
final class C3157x extends AbstractC2765B implements Spliterator.InterfaceC2773a {
    @Override // p033j$.util.Spliterator.InterfaceC2773a, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2840k.m600f(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773a
    /* renamed from: e */
    public void mo199e(InterfaceC2817f interfaceC2817f) {
        Objects.requireNonNull(interfaceC2817f);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773a, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2840k.m605a(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2840k.m602d(this);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2840k.m601e(this, i);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773a
    /* renamed from: n */
    public boolean mo198n(InterfaceC2817f interfaceC2817f) {
        Objects.requireNonNull(interfaceC2817f);
        return false;
    }

    @Override // p033j$.util.AbstractC2765B, p033j$.util.Spliterator.InterfaceC2773a, p033j$.util.Spliterator.InterfaceC2776d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2773a trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2765B, p033j$.util.Spliterator.InterfaceC2773a, p033j$.util.Spliterator.InterfaceC2776d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2776d trySplit() {
        return null;
    }
}
