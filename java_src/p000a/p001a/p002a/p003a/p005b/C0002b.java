package p000a.p001a.p002a.p003a.p005b;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.binance.android.binancepay.api.BinancePay;
import com.binance.android.binancepay.api.BinancePayListener;
import com.binance.android.binancepay.internal.activity.BinancePayActivity;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: a.a.a.a.b.b */
/* loaded from: classes.dex */
public final class C0002b implements BinancePay {

    /* renamed from: a */
    public BinancePayListener f4a;

    /* renamed from: b */
    public final Context f5b;

    public C0002b(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.f5b = context;
    }

    @Override // com.binance.android.binancepay.api.BinancePay
    public BinancePayListener getBinancePayListener() {
        return this.f4a;
    }

    @Override // com.binance.android.binancepay.api.BinancePay
    public void pay(String orderId, String type, BinancePayListener listener) {
        Intrinsics.checkParameterIsNotNull(orderId, "orderId");
        Intrinsics.checkParameterIsNotNull(type, "type");
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        this.f4a = listener;
        BinancePayActivity.C0370a c0370a = BinancePayActivity.f53b;
        Context context = this.f5b;
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(orderId, "orderId");
        Intrinsics.checkParameterIsNotNull(type, "type");
        Intent putExtra = new Intent(context, BinancePayActivity.class).putExtra("extra_key_order_id", orderId).putExtra("extra_key_order_type", type).putExtra("extra_key_api_type", "c2c");
        Intrinsics.checkExpressionValueIsNotNull(putExtra, "Intent(context, BinanceP…XTRA_KEY_API_TYPE, \"c2c\")");
        if (!(context instanceof Activity)) {
            putExtra.addFlags(268435456);
        }
        context.startActivity(putExtra);
    }
}
