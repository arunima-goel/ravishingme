<g:if test="${flash.error}">
    <div class="error-container">
        <div class="error-msg">
            <p>${flash.error}</p>
        </div>
    </div>
</g:if>

<g:if test="${flash.info}">
    <div class="error-container">
        <div class="error-msg yellow">
            <p>${flash.info}</p>
        </div>
    </div>
</g:if>

<g:if test="${flash.message}">
    
</g:if>