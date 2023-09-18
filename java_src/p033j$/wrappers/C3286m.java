package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.InterfaceC2908s;
import p033j$.util.InterfaceC3215t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2886q;
/* renamed from: j$.wrappers.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3286m implements InterfaceC2908s.InterfaceC2911c {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfLong f1279a;

    private /* synthetic */ C3286m(Spliterator.OfLong ofLong) {
        this.f1279a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2908s.InterfaceC2911c m138a(Spliterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C3288n ? ((C3288n) ofLong).f1281a : new C3286m(ofLong);
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2911c, p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return this.f1279a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ int characteristics() {
        return this.f1279a.characteristics();
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2911c
    /* renamed from: d */
    public /* synthetic */ void mo137d(InterfaceC2886q interfaceC2886q) {
        this.f1279a.forEachRemaining(C3273f0.m156a(interfaceC2886q));
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ long estimateSize() {
        return this.f1279a.estimateSize();
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2911c, p033j$.util.InterfaceC2908s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1279a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC3215t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1279a.forEachRemaining((Spliterator.OfLong) obj);
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ Comparator getComparator() {
        return this.f1279a.getComparator();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1279a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1279a.hasCharacteristics(i);
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2911c
    /* renamed from: i */
    public /* synthetic */ boolean mo136i(InterfaceC2886q interfaceC2886q) {
        return this.f1279a.tryAdvance(C3273f0.m156a(interfaceC2886q));
    }

    @Override // p033j$.util.InterfaceC3215t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1279a.tryAdvance((Spliterator.OfLong) obj);
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2911c, p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
    public /* synthetic */ InterfaceC2908s.InterfaceC2911c trySplit() {
        return m138a(this.f1279a.trySplit());
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ InterfaceC2908s trySplit() {
        return C3274g.m155a(this.f1279a.trySplit());
    }

    @Override // p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
    public /* synthetic */ InterfaceC3215t trySplit() {
        return C3290o.m132a(this.f1279a.trySplit());
    }
}
