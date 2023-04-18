package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2666q;
/* renamed from: j$.util.C */
/* loaded from: classes2.dex */
final class C2605C extends AbstractC2608E implements InterfaceC2688s.InterfaceC2691c {
    @Override // p034j$.util.InterfaceC2688s.InterfaceC2691c, p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public /* synthetic */ boolean mo108b(Consumer consumer) {
        return AbstractC2615a.m595l(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2691c
    /* renamed from: d */
    public void mo114d(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2691c, p034j$.util.InterfaceC2688s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2615a.m603d(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2688s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2615a.m602e(this);
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2615a.m601f(this, i);
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2691c
    /* renamed from: i */
    public boolean mo113i(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
        return false;
    }

    @Override // p034j$.util.AbstractC2608E, p034j$.util.InterfaceC2688s.InterfaceC2689a, p034j$.util.InterfaceC2995t, p034j$.util.InterfaceC2688s
    public /* bridge */ /* synthetic */ InterfaceC2688s.InterfaceC2691c trySplit() {
        return null;
    }

    @Override // p034j$.util.AbstractC2608E, p034j$.util.InterfaceC2688s.InterfaceC2689a, p034j$.util.InterfaceC2995t, p034j$.util.InterfaceC2688s
    public /* bridge */ /* synthetic */ InterfaceC2995t trySplit() {
        return null;
    }
}
