package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
/* renamed from: j$.wrappers.g */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2853g implements InterfaceC2487s {

    /* renamed from: a */
    final /* synthetic */ Spliterator f1172a;

    private /* synthetic */ C2853g(Spliterator spliterator) {
        this.f1172a = spliterator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2487s m152a(Spliterator spliterator) {
        if (spliterator == null) {
            return null;
        }
        return spliterator instanceof C2855h ? ((C2855h) spliterator).f1174a : new C2853g(spliterator);
    }

    @Override // p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return this.f1172a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ int characteristics() {
        return this.f1172a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ long estimateSize() {
        return this.f1172a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1172a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ Comparator getComparator() {
        return this.f1172a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1172a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1172a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ InterfaceC2487s trySplit() {
        return m152a(this.f1172a.trySplit());
    }
}
