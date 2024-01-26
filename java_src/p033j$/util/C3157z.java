package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2825p;
/* renamed from: j$.util.z */
/* loaded from: classes2.dex */
final class C3157z extends AbstractC2763B implements Spliterator.InterfaceC2773c {
    @Override // p033j$.util.Spliterator.InterfaceC2773c, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo182b(Consumer consumer) {
        return AbstractC2838k.m601h(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773c
    /* renamed from: d */
    public void mo190d(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773c, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2838k.m606c(this, consumer);
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

    @Override // p033j$.util.Spliterator.InterfaceC2773c
    /* renamed from: i */
    public boolean mo189i(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
        return false;
    }

    @Override // p033j$.util.AbstractC2763B, p033j$.util.Spliterator.InterfaceC2771a, p033j$.util.Spliterator.InterfaceC2774d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2773c trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2763B, p033j$.util.Spliterator.InterfaceC2771a, p033j$.util.Spliterator.InterfaceC2774d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2774d trySplit() {
        return null;
    }
}
