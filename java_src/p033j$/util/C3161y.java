package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.y */
/* loaded from: classes2.dex */
final class C3161y extends AbstractC2768B implements Spliterator.InterfaceC2777b {
    @Override // p033j$.util.Spliterator.InterfaceC2777b, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2843k.m599g(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2777b
    /* renamed from: c */
    public void mo193c(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2777b, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2843k.m604b(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2777b
    /* renamed from: g */
    public boolean mo192g(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return false;
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

    @Override // p033j$.util.AbstractC2768B, p033j$.util.Spliterator.InterfaceC2776a, p033j$.util.Spliterator.InterfaceC2779d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2777b trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2768B, p033j$.util.Spliterator.InterfaceC2776a, p033j$.util.Spliterator.InterfaceC2779d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2779d trySplit() {
        return null;
    }
}
