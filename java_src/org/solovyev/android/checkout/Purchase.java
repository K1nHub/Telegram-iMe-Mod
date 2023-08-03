package org.solovyev.android.checkout;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public final class Purchase {
    public final String data;
    public final String orderId;
    public final String packageName;
    public final String signature;
    public final String sku;
    public final State state;
    public final long time;
    public final String token;

    Purchase(String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        this.sku = jSONObject.getString("productId");
        this.orderId = jSONObject.optString("orderId");
        this.packageName = jSONObject.optString("packageName");
        this.time = jSONObject.getLong("purchaseTime");
        this.state = State.valueOf(jSONObject.optInt("purchaseState", 0));
        jSONObject.optString("developerPayload");
        this.token = jSONObject.optString("token", jSONObject.optString("purchaseToken"));
        jSONObject.optBoolean("autoRenewing");
        this.data = str;
        this.signature = str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Purchase fromJson(String str, String str2) throws JSONException {
        return new Purchase(str, str2);
    }

    public String toString() {
        return "Purchase{state=" + this.state + ", time=" + this.time + ", sku='" + this.sku + "'}";
    }

    /* loaded from: classes4.dex */
    public enum State {
        PURCHASED(0),
        CANCELLED(1),
        REFUNDED(2),
        EXPIRED(3);
        

        /* renamed from: id */
        public final int f1440id;

        State(int i) {
            this.f1440id = i;
        }

        static State valueOf(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3) {
                            return EXPIRED;
                        }
                        throw new IllegalArgumentException("Id=" + i + " is not supported");
                    }
                    return REFUNDED;
                }
                return CANCELLED;
            }
            return PURCHASED;
        }
    }
}
