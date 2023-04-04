package com.iMe.bots.data.repository;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: UserAnswersRepository.kt */
/* loaded from: classes3.dex */
final class UserAnswersRepository$yearTag$2 extends Lambda implements Function0<String> {
    public static final UserAnswersRepository$yearTag$2 INSTANCE = new UserAnswersRepository$yearTag$2();

    UserAnswersRepository$yearTag$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final String invoke() {
        return new SimpleDateFormat("yyyy", Locale.getDefault()).format(new Date());
    }
}
