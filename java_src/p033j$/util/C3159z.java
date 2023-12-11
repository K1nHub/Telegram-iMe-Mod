package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2827p;
/* renamed from: j$.util.z */
/* loaded from: classes2.dex */
final class C3159z extends AbstractC2765B implements Spliterator.InterfaceC2775c {
    @Override // p033j$.util.Spliterator.InterfaceC2775c, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2840k.m598h(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775c
    /* renamed from: d */
    public void mo187d(InterfaceC2827p interfaceC2827p) {
        Objects.requireNonNull(interfaceC2827p);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775c, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2840k.m603c(this, consumer);
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

    @Override // p033j$.util.Spliterator.InterfaceC2775c
    /* renamed from: i */
    public boolean mo186i(InterfaceC2827p interfaceC2827p) {
        Objects.requireNonNull(interfaceC2827p);
        return false;
    }

    @Override // p033j$.util.AbstractC2765B, p033j$.util.Spliterator.InterfaceC2773a, p033j$.util.Spliterator.InterfaceC2776d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2775c trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2765B, p033j$.util.Spliterator.InterfaceC2773a, p033j$.util.Spliterator.InterfaceC2776d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2776d trySplit() {
        return null;
    }
}
