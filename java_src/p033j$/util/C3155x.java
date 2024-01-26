package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2815f;
/* renamed from: j$.util.x */
/* loaded from: classes2.dex */
final class C3155x extends AbstractC2763B implements Spliterator.InterfaceC2771a {
    @Override // p033j$.util.Spliterator.InterfaceC2771a, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo182b(Consumer consumer) {
        return AbstractC2838k.m603f(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2771a
    /* renamed from: e */
    public void mo202e(InterfaceC2815f interfaceC2815f) {
        Objects.requireNonNull(interfaceC2815f);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2771a, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2838k.m608a(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2838k.m605d(this);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2838k.m604e(this, i);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2771a
    /* renamed from: n */
    public boolean mo201n(InterfaceC2815f interfaceC2815f) {
        Objects.requireNonNull(interfaceC2815f);
        return false;
    }

    @Override // p033j$.util.AbstractC2763B, p033j$.util.Spliterator.InterfaceC2771a, p033j$.util.Spliterator.InterfaceC2774d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2771a trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2763B, p033j$.util.Spliterator.InterfaceC2771a, p033j$.util.Spliterator.InterfaceC2774d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2774d trySplit() {
        return null;
    }
}
