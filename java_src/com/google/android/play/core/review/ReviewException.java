package com.google.android.play.core.review;

import com.google.android.play.core.tasks.zzj;
import java.util.Locale;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public class ReviewException extends zzj {
    public ReviewException(int i) {
        super(String.format(Locale.getDefault(), "Review Error(%d): %s", Integer.valueOf(i), com.google.android.play.core.review.model.zza.zza(i)));
    }
}
