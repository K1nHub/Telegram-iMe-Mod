package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
/* renamed from: j$.wrappers.g */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2977g implements InterfaceC2611s {

    /* renamed from: a */
    final /* synthetic */ Spliterator f1177a;

    private /* synthetic */ C2977g(Spliterator spliterator) {
        this.f1177a = spliterator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2611s m152a(Spliterator spliterator) {
        if (spliterator == null) {
            return null;
        }
        return spliterator instanceof C2979h ? ((C2979h) spliterator).f1179a : new C2977g(spliterator);
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return this.f1177a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ int characteristics() {
        return this.f1177a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ long estimateSize() {
        return this.f1177a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1177a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ Comparator getComparator() {
        return this.f1177a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1177a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1177a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ InterfaceC2611s trySplit() {
        return m152a(this.f1177a.trySplit());
    }
}
