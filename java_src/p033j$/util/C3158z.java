package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826p;
/* renamed from: j$.util.z */
/* loaded from: classes2.dex */
final class C3158z extends AbstractC2764B implements Spliterator.InterfaceC2774c {
    @Override // p033j$.util.Spliterator.InterfaceC2774c, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return AbstractC2839k.m597h(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774c
    /* renamed from: d */
    public void mo186d(InterfaceC2826p interfaceC2826p) {
        Objects.requireNonNull(interfaceC2826p);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774c, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2839k.m602c(this, consumer);
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

    @Override // p033j$.util.Spliterator.InterfaceC2774c
    /* renamed from: i */
    public boolean mo185i(InterfaceC2826p interfaceC2826p) {
        Objects.requireNonNull(interfaceC2826p);
        return false;
    }

    @Override // p033j$.util.AbstractC2764B, p033j$.util.Spliterator.InterfaceC2772a, p033j$.util.Spliterator.InterfaceC2775d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2774c trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2764B, p033j$.util.Spliterator.InterfaceC2772a, p033j$.util.Spliterator.InterfaceC2775d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2775d trySplit() {
        return null;
    }
}
