package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816f;
/* renamed from: j$.util.x */
/* loaded from: classes2.dex */
final class C3156x extends AbstractC2764B implements Spliterator.InterfaceC2772a {
    @Override // p033j$.util.Spliterator.InterfaceC2772a, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return AbstractC2839k.m599f(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2772a
    /* renamed from: e */
    public void mo198e(InterfaceC2816f interfaceC2816f) {
        Objects.requireNonNull(interfaceC2816f);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2772a, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2839k.m604a(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2839k.m601d(this);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2839k.m600e(this, i);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2772a
    /* renamed from: n */
    public boolean mo197n(InterfaceC2816f interfaceC2816f) {
        Objects.requireNonNull(interfaceC2816f);
        return false;
    }

    @Override // p033j$.util.AbstractC2764B, p033j$.util.Spliterator.InterfaceC2772a, p033j$.util.Spliterator.InterfaceC2775d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2772a trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2764B, p033j$.util.Spliterator.InterfaceC2772a, p033j$.util.Spliterator.InterfaceC2775d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2775d trySplit() {
        return null;
    }
}
