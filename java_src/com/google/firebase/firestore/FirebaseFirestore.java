package com.google.firebase.firestore;

import androidx.annotation.Keep;
import com.google.firebase.firestore.remote.FirestoreChannel;
/* loaded from: classes3.dex */
public class FirebaseFirestore {
    @Keep
    static void setClientLanguage(String str) {
        FirestoreChannel.setClientLanguage(str);
    }
}
