package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2830p;
/* renamed from: j$.util.z */
/* loaded from: classes2.dex */
final class C3162z extends AbstractC2768B implements Spliterator.InterfaceC2778c {
    @Override // p033j$.util.Spliterator.InterfaceC2778c, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2843k.m598h(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2778c
    /* renamed from: d */
    public void mo187d(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2778c, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2843k.m603c(this, consumer);
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

    @Override // p033j$.util.Spliterator.InterfaceC2778c
    /* renamed from: i */
    public boolean mo186i(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
        return false;
    }

    @Override // p033j$.util.AbstractC2768B, p033j$.util.Spliterator.InterfaceC2776a, p033j$.util.Spliterator.InterfaceC2779d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2778c trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2768B, p033j$.util.Spliterator.InterfaceC2776a, p033j$.util.Spliterator.InterfaceC2779d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2779d trySplit() {
        return null;
    }
}
