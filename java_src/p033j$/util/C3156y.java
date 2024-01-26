package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2821l;
/* renamed from: j$.util.y */
/* loaded from: classes2.dex */
final class C3156y extends AbstractC2763B implements Spliterator.InterfaceC2772b {
    @Override // p033j$.util.Spliterator.InterfaceC2772b, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo182b(Consumer consumer) {
        return AbstractC2838k.m602g(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2772b
    /* renamed from: c */
    public void mo196c(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2772b, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2838k.m607b(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2772b
    /* renamed from: g */
    public boolean mo195g(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        return false;
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

    @Override // p033j$.util.AbstractC2763B, p033j$.util.Spliterator.InterfaceC2771a, p033j$.util.Spliterator.InterfaceC2774d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2772b trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2763B, p033j$.util.Spliterator.InterfaceC2771a, p033j$.util.Spliterator.InterfaceC2774d, p033j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2774d trySplit() {
        return null;
    }
}
