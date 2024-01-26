package p000a.p001a.p002a.p003a.p005b.p006c;

import android.view.View;
import com.binance.android.binancepay.internal.activity.BinancePayActivity;
import kotlin.jvm.internal.Intrinsics;
import p000a.p001a.p002a.p003a.p005b.p007d.View$OnClickListenerC0011a;
/* renamed from: a.a.a.a.b.c.b */
/* loaded from: classes.dex */
public final class C0010b implements View$OnClickListenerC0011a.InterfaceC0012a {

    /* renamed from: a */
    public final /* synthetic */ BinancePayActivity f8a;

    /* renamed from: b */
    public final /* synthetic */ View$OnClickListenerC0011a f9b;

    public C0010b(BinancePayActivity binancePayActivity, View$OnClickListenerC0011a view$OnClickListenerC0011a) {
        this.f8a = binancePayActivity;
        this.f9b = view$OnClickListenerC0011a;
    }

    @Override // p000a.p001a.p002a.p003a.p005b.p007d.View$OnClickListenerC0011a.InterfaceC0012a
    /* renamed from: a */
    public void mo1159a(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f9b.dismiss();
        this.f8a.m1150a();
        this.f8a.finish();
    }

    @Override // p000a.p001a.p002a.p003a.p005b.p007d.View$OnClickListenerC0011a.InterfaceC0012a
    /* renamed from: b */
    public void mo1158b(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f9b.dismiss();
        this.f8a.finish();
    }
}
