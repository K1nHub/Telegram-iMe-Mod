package p033j$.wrappers;

import java.util.PrimitiveIterator;
import p033j$.util.InterfaceC2906q;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2886q;
/* renamed from: j$.wrappers.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3270e implements InterfaceC2906q {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfLong f1263a;

    private /* synthetic */ C3270e(PrimitiveIterator.OfLong ofLong) {
        this.f1263a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2906q m161a(PrimitiveIterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C3272f ? ((C3272f) ofLong).f1265a : new C3270e(ofLong);
    }

    @Override // p033j$.util.InterfaceC2906q
    /* renamed from: d */
    public /* synthetic */ void mo160d(InterfaceC2886q interfaceC2886q) {
        this.f1263a.forEachRemaining(C3273f0.m156a(interfaceC2886q));
    }

    @Override // p033j$.util.InterfaceC2906q, p033j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1263a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2903o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1263a.forEachRemaining((PrimitiveIterator.OfLong) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1263a.hasNext();
    }

    @Override // p033j$.util.InterfaceC2906q, java.util.Iterator
    public /* synthetic */ Long next() {
        return this.f1263a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1263a.next();
    }

    @Override // p033j$.util.InterfaceC2906q
    public /* synthetic */ long nextLong() {
        return this.f1263a.nextLong();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1263a.remove();
    }
}
