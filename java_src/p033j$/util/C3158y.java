package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2823l;
/* renamed from: j$.util.y */
/* loaded from: classes2.dex */
final class C3158y extends AbstractC2765B implements Spliterator.InterfaceC2774b {
    @Override // p033j$.util.Spliterator.InterfaceC2774b, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2840k.m599g(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774b
    /* renamed from: c */
    public void mo193c(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774b, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2840k.m604b(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774b
    /* renamed from: g */
    public boolean mo192g(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
        return false;
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

    @Override // p033j$.util.AbstractC2765B, p033j$.util.Spliterator.InterfaceC2773a, p033j$.util.Spliterator.InterfaceC2776d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2774b trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2765B, p033j$.util.Spliterator.InterfaceC2773a, p033j$.util.Spliterator.InterfaceC2776d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2776d trySplit() {
        return null;
    }
}
