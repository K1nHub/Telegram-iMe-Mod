package org.solovyev.android.checkout;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
/* loaded from: classes6.dex */
public final class Skus {
    public final List<Sku> list;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Skus(String str, List<Sku> list) {
        this.list = Collections.unmodifiableList(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Skus fromBundle(Bundle bundle, String str) throws RequestException {
        List<String> extractList = extractList(bundle);
        ArrayList arrayList = new ArrayList(extractList.size());
        for (String str2 : extractList) {
            try {
                arrayList.add(Sku.fromJson(str2, str));
            } catch (JSONException e) {
                throw new RequestException(e);
            }
        }
        return new Skus(str, arrayList);
    }

    private static List<String> extractList(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("DETAILS_LIST");
        return stringArrayList != null ? stringArrayList : Collections.emptyList();
    }
}
