using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Product.Server.Models;
using Zocoapi.server.Models;

namespace Zocoapi.server.Controllers
{
    [Route("api/[controller]")]
    public class AdminController : Controller
    {
        private readonly StitchInfoContext _context;
        private readonly ContributionContext _contriibutionContext;
        private readonly ArticleInfoContext _articleInfoContext;

        public AdminController(StitchInfoContext context, ContributionContext contriibutionContext, ArticleInfoContext articleInfoContext )
        {
            _context = context;
            _contriibutionContext = contriibutionContext;
            _articleInfoContext = articleInfoContext;
        }


        #region StitchInfo
        // GET: api/StitchInfo

        [HttpGet]
        public async Task<ActionResult<IEnumerable<StitchInfo>>> GetStitchInfos()
        {
            try
            {
                return await _context.StitchInfos.ToListAsync();

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
           
        }

        // GET: api/Category/5
        [HttpGet("{id}")]
        public async Task<ActionResult<StitchInfo>> GetStitchInfo(long id)
        {
            var stitchInfo = await _context.StitchInfos.FindAsync(id);

            if (stitchInfo == null)
            {
                return NotFound();
            }

            return stitchInfo;
        }

        // POST: api/Category
        [HttpPost]
        public async Task<ActionResult<StitchInfo>> PostStitchInfo(StitchInfo stitchInfo)
        {
            try
            {
                stitchInfo.Created = DateTime.Now;
                stitchInfo.Modified = DateTime.Now;
                stitchInfo.AuthorId = 1;// DateTime.Now;
                stitchInfo.EditorId = 1;// DateTime.Now;
                _context.StitchInfos.Add(stitchInfo);
                await _context.SaveChangesAsync();

                return CreatedAtAction(nameof(GetStitchInfo), new { id = stitchInfo.Id }, stitchInfo);

            }
            catch (Exception ex) { 
                    return BadRequest(ex.Message);
            }
            
        }

        // PUT: api/Category/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutStitchInfo(long id, StitchInfo stitchInfo)
        {
            try
            {
                if (id != stitchInfo.Id)
                {
                    return BadRequest();
                }

                _context.Entry(stitchInfo).State = EntityState.Modified;

                try
                {
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!StichInfoExists(id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }

                return NoContent();

            }
            catch (Exception ex) { 
                return BadRequest(ex.Message);
            }

            
        }

        // DELETE: api/Category/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteStitchInfo(long id)
        {
            try
            {
                var stitchInfo = await _context.StitchInfos.FindAsync(id);
                if (stitchInfo == null)
                {
                    return NotFound();
                }

                _context.StitchInfos.Remove(stitchInfo);
                await _context.SaveChangesAsync();

                return NoContent();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        
            
        }

        private bool StichInfoExists(long id)
        {
            return _context.StitchInfos.Any(e => e.Id == id);
        }

        #endregion

        #region Contribution


        [HttpGet]
        public async Task<ActionResult<IEnumerable<Contribution>>> GetContributions()
        {
            try
            {
                return await _contriibutionContext.Contributions.ToListAsync();

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }

        }

        // GET: api/Category/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Contribution>> GetContributions(long id)
        {
            var stitchInfo = await _contriibutionContext.Contributions.FindAsync(id);

            if (stitchInfo == null)
            {
                return NotFound();
            }

            return stitchInfo;
        }

        // POST: api/Category
        [HttpPost]
        public async Task<ActionResult<Contribution>> PostContribution(Contribution stitchInfo)
        {
            try
            {
                stitchInfo.Created = DateTime.Now;
                stitchInfo.Modified = DateTime.Now;
                stitchInfo.AuthorId = 1;// DateTime.Now;
                stitchInfo.EditorId = 1;// DateTime.Now;
                _contriibutionContext.Contributions.Add(stitchInfo);
                await _contriibutionContext.SaveChangesAsync();

                return CreatedAtAction(nameof(GetContributions), new { id = stitchInfo.Id }, stitchInfo);

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }

        }

        // PUT: api/Category/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutContribution(long id, Contribution stitchInfo)
        {
            try
            {
                if (id != stitchInfo.Id)
                {
                    return BadRequest();
                }

                _contriibutionContext.Entry(stitchInfo).State = EntityState.Modified;

                try
                {
                    await _contriibutionContext.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ContributionExists(id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }

                return NoContent();

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // DELETE: api/Category/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteContribution(long id)
        {
            try
            {
                var stitchInfo = await _contriibutionContext.Contributions.FindAsync(id);
                if (stitchInfo == null)
                {
                    return NotFound();
                }

                _contriibutionContext.Contributions.Remove(stitchInfo);
                await _contriibutionContext.SaveChangesAsync();

                return NoContent();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        private bool ContributionExists(long id)
        {
            return _contriibutionContext.Contributions.Any(e => e.Id == id);
        }

        #endregion

        #region ArticleInfo

        [HttpGet]
        public async Task<ActionResult<IEnumerable<ArticleInfo>>> GetArticleInfos()
        {
            try
            {
                return await _articleInfoContext.ArticleInfos.ToListAsync();

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }

        }

        // GET: api/Category/5
        [HttpGet("{id}")]
        public async Task<ActionResult<ArticleInfo>> GetArticleInfos(long id)
        {
            var stitchInfo = await _articleInfoContext.ArticleInfos.FindAsync(id);

            if (stitchInfo == null)
            {
                return NotFound();
            }

            return stitchInfo;
        }

        // POST: api/Category
        [HttpPost]
        public async Task<ActionResult<Contribution>> PostArticleInfo(ArticleInfo stitchInfo)
        {
            try
            {
                stitchInfo.Created = DateTime.Now;
                stitchInfo.Modified = DateTime.Now;
                stitchInfo.AuthorId = 1;// DateTime.Now;
                stitchInfo.EditorId = 1;// DateTime.Now;
                _articleInfoContext.ArticleInfos.Add(stitchInfo);
                await _articleInfoContext.SaveChangesAsync();

                return CreatedAtAction(nameof(GetArticleInfos), new { id = stitchInfo.Id }, stitchInfo);

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }

        }

        // PUT: api/Category/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutArticleInfo(long id, ArticleInfo stitchInfo)
        {
            try
            {
                if (id != stitchInfo.Id)
                {
                    return BadRequest();
                }

                _articleInfoContext.Entry(stitchInfo).State = EntityState.Modified;

                try
                {
                    await _articleInfoContext.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ArticleInfoExists(id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }

                return NoContent();

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // DELETE: api/Category/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteArticleInfo(long id)
        {
            try
            {
                var stitchInfo = await _articleInfoContext.ArticleInfos.FindAsync(id);
                if (stitchInfo == null)
                {
                    return NotFound();
                }

                _articleInfoContext.ArticleInfos.Remove(stitchInfo);
                await _articleInfoContext.SaveChangesAsync();

                return NoContent();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        private bool ArticleInfoExists(long id)
        {
            return _articleInfoContext.ArticleInfos.Any(e => e.Id == id);
        }

        #endregion
    }
}
