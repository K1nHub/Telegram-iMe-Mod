package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2822l;
/* renamed from: j$.util.y */
/* loaded from: classes2.dex */
final class C3157y extends AbstractC2764B implements Spliterator.InterfaceC2773b {
    @Override // p033j$.util.Spliterator.InterfaceC2773b, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return AbstractC2839k.m598g(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773b
    /* renamed from: c */
    public void mo192c(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773b, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2839k.m603b(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773b
    /* renamed from: g */
    public boolean mo191g(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        return false;
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

    @Override // p033j$.util.AbstractC2764B, p033j$.util.Spliterator.InterfaceC2772a, p033j$.util.Spliterator.InterfaceC2775d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2773b trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2764B, p033j$.util.Spliterator.InterfaceC2772a, p033j$.util.Spliterator.InterfaceC2775d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2775d trySplit() {
        return null;
    }
}
